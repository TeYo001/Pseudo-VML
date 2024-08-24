#include "FileEditor.h"
#include "stdlib.h"
#include "stdbool.h"
#include "string.h"
#include "sys/stat.h"

ModTable* build_mod_table(char* original_data, unsigned int original_data_size, 
        unsigned int append_entry_max_count, unsigned int remove_entry_max_count, unsigned int replace_entry_max_count) {
    ModTable* mod_table = malloc(sizeof(ModTable));
    mod_table->append_entries = malloc(sizeof(ModTableEntry_Append) * append_entry_max_count);
    mod_table->remove_entries = malloc(sizeof(ModTableEntry_Remove) * remove_entry_max_count);
    mod_table->replace_entries = malloc(sizeof(ModTableEntry_Replace) * replace_entry_max_count);
    mod_table->append_entry_count = 0;
    mod_table->remove_entry_count = 0;
    mod_table->replace_entry_count = 0;
    mod_table->append_entry_max_count = append_entry_max_count;
    mod_table->remove_entry_max_count = remove_entry_max_count;
    mod_table->replace_entry_max_count = replace_entry_max_count;
    mod_table->original_data = original_data;
    mod_table->original_data_size = original_data_size;
    return mod_table;
}

void free_mod_table(ModTable* mod_table) {
    free(mod_table->replace_entries);
    free(mod_table->append_entries);
    free(mod_table->remove_entries);
    free(mod_table);
}

void add_mod_entry_append(ModTable* mod_table, unsigned int file_offset, char* append_data, unsigned int data_size) {
    if (mod_table->append_entry_count >= mod_table->append_entry_max_count) {
        printf("ERROR: Maximum number of append entries reached\n");
        exit(1);
    }
    ModTableEntry_Append* entry = &mod_table->append_entries[mod_table->append_entry_count];
    entry->file_offset = file_offset;
    entry->append_data = append_data;
    entry->data_size = data_size;
    mod_table->append_entry_count++;
}

void add_mod_entry_remove(ModTable* mod_table, unsigned int file_offset, unsigned int size) {
    if (mod_table->remove_entry_count >= mod_table->remove_entry_max_count) {
        printf("ERROR: Maximum number of remove entries reached\n");
        exit(1);
    }
    ModTableEntry_Remove* entry = &mod_table->remove_entries[mod_table->remove_entry_count];
    entry->file_offset = file_offset;
    entry->size = size;
    mod_table->remove_entry_count++;
}

void add_mod_entry_replace(ModTable* mod_table, unsigned int file_offset, char* replace_data, unsigned int data_size) {
    if (mod_table->replace_entry_count >= mod_table->replace_entry_max_count) {
        printf("ERROR: Maximum number of remove entries reached\n");
        exit(1);
    }
    ModTableEntry_Replace* entry = &mod_table->replace_entries[mod_table->replace_entry_count];
    entry->file_offset = file_offset;
    entry->replace_data = replace_data;
    entry->data_size = data_size;
    mod_table->replace_entry_count++;

}

void clear_mod_table(ModTable* mod_table, char* new_original_data, unsigned int new_original_data_size) {
    mod_table->replace_entry_count = 0;
    mod_table->append_entry_count = 0;
    mod_table->remove_entry_count = 0;
    if (new_original_data != NULL) {
        // NOTE(TeYo): Memory management is probably needed at some point
        mod_table->original_data = new_original_data;
        mod_table->original_data_size = new_original_data_size;
    }
}

static void get_sorted_indices_append(ModTableEntry_Append* entries, unsigned int entry_count, unsigned int** out_sorted_indices) {
    unsigned int lowest = -1;
    unsigned int lowest_index = 0;
    bool* found = malloc(sizeof(bool) * entry_count);
    for (unsigned int i = 0; i < entry_count; i++) {
        found[i] = false;
    }
    for (unsigned int i = 0; i < entry_count; i++) {
        for (unsigned int j = 0; j < entry_count; j++) {
            if (entries[j].file_offset >= lowest || found[j]) {
                continue;
            }
            lowest = entries[j].file_offset;
            lowest_index = j;
        }
        (*out_sorted_indices)[i] = lowest_index;
        found[lowest_index] = true;
        lowest = -1;
    }
    free(found);
}

static void get_sorted_indices_remove(ModTableEntry_Remove* entries, unsigned int entry_count, unsigned int** out_sorted_indices) {
    unsigned int lowest = -1;
    unsigned int lowest_index = 0;
    bool* found = malloc(sizeof(bool) * entry_count);
    for (unsigned int i = 0; i < entry_count; i++) {
        found[i] = false;
    }
    for (unsigned int i = 0; i < entry_count; i++) {
        for (unsigned int j = 0; j < entry_count; j++) {
            if (entries[j].file_offset >= lowest || found[j]) {
                continue;
            }
            lowest = entries[j].file_offset;
            lowest_index = j;
        }
        (*out_sorted_indices)[i] = lowest_index;
        found[lowest_index] = true;
        lowest = -1;
    }
    free(found);
}

void use_mod_table(ModTable* mod_table, FILE* fd) {
    const unsigned int MAX_WRITE_SIZE = 4096;
    unsigned int* sorted_indices_append = malloc(sizeof(unsigned int) * mod_table->append_entry_count);
    unsigned int* sorted_indices_remove = malloc(sizeof(unsigned int) * mod_table->remove_entry_count);
    unsigned int* skip_keys = malloc(sizeof(unsigned int) * mod_table->remove_entry_count);
    unsigned int* skip_values = malloc(sizeof(unsigned int) * mod_table->remove_entry_count);
    unsigned int skip_index = 0;
    unsigned int skip_amount = 0;
    unsigned int current_write_pointer = 0;
    unsigned int current_read_pointer = 0;
    unsigned int end_of_last_removed_section = 0;

    unsigned int modified_data_removed_size = mod_table->original_data_size;
    for (unsigned int i = 0; i < mod_table->remove_entry_count; i++) {
        modified_data_removed_size -= mod_table->remove_entries[i].size;
        skip_keys[i] = 0;
        skip_values[i] = 0;
    }
    unsigned int modified_data_written_size = modified_data_removed_size;
    for (unsigned int i = 0; i < mod_table->append_entry_count; i++) {
        modified_data_written_size += mod_table->append_entries[i].data_size;
    }
    char* modified_data_replaced = malloc(mod_table->original_data_size);
    char* modified_data_removed = malloc(modified_data_removed_size);
    char* modified_data_written = malloc(modified_data_written_size);

    get_sorted_indices_append(mod_table->append_entries, mod_table->append_entry_count, &sorted_indices_append);
    get_sorted_indices_remove(mod_table->remove_entries, mod_table->remove_entry_count, &sorted_indices_remove);

    memcpy(modified_data_replaced, mod_table->original_data, mod_table->original_data_size);
    for (unsigned int i = 0; i < mod_table->replace_entry_count; i++) {
        ModTableEntry_Replace* entry = &mod_table->replace_entries[i];
        memcpy(modified_data_replaced + entry->file_offset, entry->replace_data, entry->data_size);
    }
    for (unsigned int i = 0; i < mod_table->remove_entry_count; i++) {
        ModTableEntry_Remove* entry = &mod_table->remove_entries[sorted_indices_remove[i]];
        unsigned int write_size = entry->file_offset - current_read_pointer;
        memcpy(modified_data_removed + current_write_pointer, modified_data_replaced + current_read_pointer, write_size);
        current_write_pointer += write_size;
        current_read_pointer += write_size + entry->size;
        skip_keys[i] = current_write_pointer;
        skip_values[i] = entry->size;
    }
    {
        unsigned int write_size = mod_table->original_data_size - current_read_pointer;
        memcpy(modified_data_removed + current_write_pointer, modified_data_replaced + current_read_pointer, write_size);
    }
    current_read_pointer = 0;
    current_write_pointer = 0;
    for (unsigned int i = 0; i < mod_table->append_entry_count; i++) {
        ModTableEntry_Append* entry = &mod_table->append_entries[sorted_indices_append[i]];
        // calculate skip amount
        for (unsigned int j = skip_index; j < mod_table->remove_entry_count; j++) {
            if (skip_keys[j] <= current_read_pointer + entry->file_offset) {
                skip_index = j + 1;
                skip_amount += skip_values[j];
            }
        }
        unsigned int new_entry_file_offset = entry->file_offset - skip_amount;
        unsigned int write_size = new_entry_file_offset - current_read_pointer;
        // copy
        memcpy(modified_data_written + current_write_pointer, modified_data_removed + current_read_pointer, write_size);
        current_read_pointer += write_size;
        current_write_pointer += write_size;
        // append
        memcpy(modified_data_written + current_write_pointer, entry->append_data, entry->data_size);
        current_write_pointer += entry->data_size;
    }
    {
        unsigned int write_size = modified_data_removed_size - current_read_pointer;
        memcpy(modified_data_written + current_write_pointer, modified_data_removed + current_read_pointer, write_size);
    }

    unsigned part_count = modified_data_written_size / MAX_WRITE_SIZE;
    unsigned int rest = modified_data_written_size - part_count * MAX_WRITE_SIZE;
    fwrite(modified_data_written, MAX_WRITE_SIZE, part_count, fd);
    if (rest != 0) {
        fwrite(modified_data_written + part_count * MAX_WRITE_SIZE, rest, 1, fd);
    }

    free(modified_data_removed);
    free(modified_data_written);
    free(sorted_indices_append);
    free(sorted_indices_remove);
    free(skip_keys);
    free(skip_values);
}

unsigned int align_up(unsigned int ptr, unsigned int alignment) {
    return ptr - (ptr % alignment) + alignment;
}

unsigned int get_file_size(const char* filename) {
    struct stat file_stats = {0};
    stat(filename, &file_stats);
    return file_stats.st_size;
}
