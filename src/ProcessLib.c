#include "ProcessLib.h"

unsigned int str_len(const char* str) {
    unsigned int length = 0;
    while (str[length] != '\0') {
        length++;
    }
    return length;
}

unsigned int unicode_str_len(const wchar_t* str) {
    unsigned int length = 0;
    while (str[length] != '\0') {
        length++;
    }
    return length;
}

bool str_is_equal(const char* str1, const char* str2, unsigned int length) {
    for (int i = 0; i < length; i++) {
        if (str1[i] != str2[i]) {
            return false;
        }
    }
    return true;
}

bool str_ends_with(const char* str, const char* ending_str, unsigned int str_length, unsigned int ending_str_length) {
    for (int i = str_length - ending_str_length; i < str_length; i++) {
        if (str[i] != ending_str[i + ending_str_length - str_length]) {
            return false;
        }
    }
    return true;
}

void mem_copy(void* destination, const void* source, unsigned int length) {
    for (int i = 0; i < length; i++) {
        ((char*)destination)[i] = ((const char*)source)[i];
    }
}

void str_copy(char* destination, const char* source) {
    unsigned int length = str_len(source);
    mem_copy(destination, source, length + 1);
}

void unicode_to_asci_str(char* destination, const wchar_t* source) {
    unsigned int unicode_length = unicode_str_len(source);
    for (int  i = 0; i < unicode_length + 1; i++) {
        destination[i] = (char)source[i];
    }
}

unsigned int build_simple_ldr(PEB* peb, LdrSimpleEntry* out_ldr_simple) {
    LIST_ENTRY* head = &peb->Ldr->InMemoryOrderModuleList;
    LIST_ENTRY* current = head;
    unsigned int idx = 0;
    while ((current = current->Flink) != head) {
        LDR_DATA_TABLE_ENTRY* data = (LDR_DATA_TABLE_ENTRY*)((char*)current - 8 * 2);
        out_ldr_simple[idx].base = data->DllBase;
        unicode_to_asci_str(out_ldr_simple[idx].name, data->FullDllName.Buffer);
        idx++;
    }
    return idx;
}

void parse_kernel(void* kernel, KernelParseResult* out_result,
        const char* get_module_handle_literal,
        const char* get_proc_address_literal,
        const char* load_library_literal,
        const char* free_library_literal,
        const char* virtual_alloc_literal,
        const char* virtual_protect_literal) {
    IMAGE_DOS_HEADER* dos_header = (IMAGE_DOS_HEADER*)kernel;
    if (dos_header->e_magic != IMAGE_DOS_SIGNATURE) {
        return;
    }
    IMAGE_NT_HEADERS64* nt_header = (kernel + dos_header->e_lfanew);
    if (nt_header->Signature != IMAGE_NT_SIGNATURE) {
        return;
    }
    IMAGE_EXPORT_DIRECTORY* export_table = (kernel + nt_header->OptionalHeader.DataDirectory[EXPORT_TABLE_DIRECTORY_ENTRY].VirtualAddress);
    uint32_t* func_name_va_array = (kernel + export_table->AddressOfNames);
    uint16_t* func_name_ordinal_array = (kernel + export_table->AddressOfNameOrdinals);
    uint32_t* func_address_array = (kernel + export_table->AddressOfFunctions);

    for (int i = 0; i < export_table->NumberOfNames; i++) {
        char* name = (char*)(kernel + func_name_va_array[i]);
        uint16_t ordinal = func_name_ordinal_array[i];
        void* func_address = (kernel + func_address_array[ordinal]);
        if (str_is_equal(name, get_module_handle_literal, str_len(get_module_handle_literal))) {
            out_result->get_module_handle_ptr = func_address;
        }
        else if (str_is_equal(name, get_proc_address_literal, str_len(get_proc_address_literal))) {
            out_result->get_proc_address_ptr = func_address;
        }
        else if (str_is_equal(name, load_library_literal, str_len(load_library_literal))) {
            out_result->load_library_ptr = func_address;
        }
        else if (str_is_equal(name, free_library_literal, str_len(free_library_literal))) {
            out_result->free_library_ptr = func_address;
        }
        else if (str_is_equal(name, virtual_alloc_literal, str_len(virtual_alloc_literal))) {
            out_result->virtual_alloc_ptr = func_address;
        }
        else if (str_is_equal(name, virtual_protect_literal, str_len(virtual_protect_literal))) {
            out_result->virtual_protect_ptr = func_address;
        }
    }
}
