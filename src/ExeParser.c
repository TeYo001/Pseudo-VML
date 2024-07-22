#include "ExeParser.h"
#include "stdio.h"
#include "stdlib.h"

/*
    WORD   e_magic;                     // Magic number
    WORD   e_cblp;                      // Bytes on last page of file
    WORD   e_cp;                        // Pages in file
    WORD   e_crlc;                      // Relocations
    WORD   e_cparhdr;                   // Size of header in paragraphs
    WORD   e_minalloc;                  // Minimum extra paragraphs needed
    WORD   e_maxalloc;                  // Maximum extra paragraphs needed
    WORD   e_ss;                        // Initial (relative) SS value
    WORD   e_sp;                        // Initial SP value
    WORD   e_csum;                      // Checksum
    WORD   e_ip;                        // Initial IP value
    WORD   e_cs;                        // Initial (relative) CS value
    WORD   e_lfarlc;                    // File address of relocation table
    WORD   e_ovno;                      // Overlay number
    WORD   e_res[4];                    // Reserved words
    WORD   e_oemid;                     // OEM identifier (for e_oeminfo)
    WORD   e_oeminfo;                   // OEM information; e_oemid specific
    WORD   e_res2[10];                  // Reserved words
    LONG   e_lfanew;                    // File address of new exe header
*/

static void print_dos_header(const IMAGE_DOS_HEADER* dos_header) {
    if (dos_header->e_magic != IMAGE_DOS_SIGNATURE) {
        printf("e_magic: VALID\n");
    } else {
        printf("e_magic: INVALID\n");
    }

}

void visualize(const char* filename) {
    printf("opening file: %s\n", filename);
    
    FILE* fd = fopen(filename, "r");
    IMAGE_DOS_HEADER* dos_header = malloc(sizeof(IMAGE_DOS_HEADER));
    fgets((char*)dos_header, sizeof(IMAGE_DOS_HEADER), fd);

    fclose(fd);
}
