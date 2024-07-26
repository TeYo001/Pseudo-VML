#include "ExeParser.h"
#include "ElfParser.h"

/*
#ifdef _WIN32
#include "ExeParser.h"
#elif __linux__
#include "ElfParser.h"
#endif
*/

int main() {
    exe_visualize("test/hello64.exe");
    return 0;
}
