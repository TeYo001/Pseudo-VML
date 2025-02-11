#pragma once

#include "FileEditor.h"
#include "inttypes.h"

unsigned int build_single_processor(char* payload_buffer, const char* processor_filename, const char* entry_point_function_name);
