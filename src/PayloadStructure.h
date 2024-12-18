#pragma once

// NOTE(TeYo): Im removing a bunch of stuff to simplify the payload as much as possible rn
#define RETURN_TABLE_PTR 0x0
#define RETURN_TABLE_ENTRY_SIZE 7
#define PROCESSORS_BEGIN_PTR 0x500

/* 
#define KERNEL32_INFORMATION_TABLE_PTR 0x0
#define RETURN_TABLE_PTR 0x20
#define RETURN_TABLE_ENTRY_SIZE 7
#define PRE_PROCESSOR_BEGIN_PTR 0x100
#define ARGUMENT_TABLE_PTR 0x200
#define PROCESSORS_BEGIN_PTR 0x300

#define PAYLOAD_SIGNATURE_COUNT 5
#define PAYLOAD_INDEX_fputs 0
#define PAYLOAD_INDEX_strlen 1
#define PAYLOAD_INDEX_malloc 2
#define PAYLOAD_INDEX_free 3
#define PAYLOAD_INDEX_exit 4
*/

// the following defines are for use in after processing of the payload
#define PAYLOAD_ENTRY_POINT_SIGNATURE 0xDEADBEEF
#define PAYLOAD_RETURN_POINT_SIGNATURE 0xBEEFDEAD

#define PAYLOAD_SIGNATURE_STEP_SIZE 0x01000000
#define PAYLOAD_SIGNATURE_SIZE_BYTES 4
#define PAYLOAD_SIGNATURE(index) 0x00ABCDEF + PAYLOAD_SIGNATURE_STEP_SIZE * index
