#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <stdarg.h>
#include <string.h>
#include <errno.h>
#include <unistd.h>

#define NOB_IMPLEMENTATION
#include "nob.h"

typedef enum {
    TARGET_POSIX,
    // TODO: TARGET_WIN64_MINGW right now means cross compilation from Linux to Windows using mingw-w64
    // I think the naming should be more explicit about that
    TARGET_WIN64_MINGW,
    TARGET_WIN64_MSVC,
    COUNT_TARGETS
} Target;

static_assert(3 == COUNT_TARGETS, "Amount of targets have changed");
const char *target_names[] = {
    [TARGET_POSIX]       = "posix",
    [TARGET_WIN64_MINGW] = "win64-mingw",
    [TARGET_WIN64_MSVC]  = "win64-msvc",
};

void get_file_name_from_location(const char* location, char* out)
{
    unsigned int lastSlash = 0;
    for (unsigned int i = 0; i < strlen(location); i++)
    {
        if (location[i] == '/' || location[i] == '\\')
            lastSlash = i;
    }
    
    memcpy(out, location + lastSlash + 1, strlen(location) - lastSlash - 1);
}

#ifdef __linux__
    #define BUILD_DIRECTORY "./build/"
    #define SOURCE_DIRECTORY "./src/"
    #define LIBRARY_DIRECTORY "./lib/"
    #define EXECUTABLE_ENDING ""
    #define DIRECTORY_START "./"
    #define EXECUTABLE_LOCATION "./build/main"
    #define COMPILER_NAME "gcc"
#elif _WIN32
    #define BUILD_DIRECTORY "build/"
    #define SOURCE_DIRECTORY "src/"
    #define LIBRARY_DIRECTORY "lib/"
    #define EXECUTABLE_ENDING ".exe"
    #define DIRECTORY_START ""
    #define EXECUTABLE_LOCATION "build/main.exe"
    #define COMPILER_NAME "x86_64-w64-mingw32-gcc" 
#endif

typedef enum {
    COMPILE,
    RUN,
    DEBUG,
    JUST_RUN,
    JUST_DEBUG,
} MainCommandType;

int main(int argc, char** argv)
{
    NOB_GO_REBUILD_URSELF(argc, argv);
    
    char WORKING_DIRECTORY[PATH_MAX] = {0};
    if (getcwd(WORKING_DIRECTORY, PATH_MAX) == NULL) {
        fprintf(stderr, "Couldn't get working directory\n");
        return 1;
    }
    {
        int len = strlen(WORKING_DIRECTORY);
        WORKING_DIRECTORY[len] = '/';
        WORKING_DIRECTORY[len + 1] = '\0';
    }

    MainCommandType mainCmd = COMPILE;
    
    if (argc == 2)
    {
        if(strcmp(argv[1], "run") == 0)
        {
            mainCmd = RUN;
        }else if (strcmp(argv[1], "debug") == 0)
        {
            mainCmd = DEBUG;
        }else if (strcmp(argv[1], "jrun") == 0)
        {
            mainCmd = JUST_RUN;
        }else if (strcmp(argv[1], "jdebug") == 0)
        {
            mainCmd = JUST_DEBUG;
        }else if (strcmp(argv[1], "") == 0)
        {
            mainCmd = COMPILE;
        }else {
            fprintf(stderr, "Invalid main command type\n");
            return 1;
        }
    }

    const unsigned int INCLUDE_FILES_COUNT = 9;
    const char* include_file_locations[] = {
        "src/Main",
        "src/ExeParser",
        "src/ElfParser",
        "src/AsmParser",
        "src/JumpTableParser",
        "src/ExeEditor",
        "src/FileEditor",
        "src/Instruction",
        "src/BuildPayload"
    };
    
    if (mainCmd == JUST_RUN || mainCmd == JUST_DEBUG) goto run_skip;
    
    Nob_Procs procs = {0};

    for (unsigned int i = 0; i < INCLUDE_FILES_COUNT; i++)
    {
        Nob_Cmd cmd = {0};
        
        char c_file_str[512] = "";
        strcat(c_file_str, include_file_locations[i]);
        strcat(c_file_str, ".c");
        
        char filename[512] = {0};
        get_file_name_from_location(include_file_locations[i], filename);
        
        char o_file_str[512] = BUILD_DIRECTORY;
        strcat(o_file_str, filename);
        strcat(o_file_str, ".o");

        nob_cmd_append(&cmd, COMPILER_NAME, "-ggdb");
        nob_cmd_append(&cmd, "-I", SOURCE_DIRECTORY);
        nob_cmd_append(&cmd, "-I", LIBRARY_DIRECTORY);
        nob_cmd_append(&cmd, "-I", "./lib/xed/includes/");
        nob_cmd_append(&cmd, "-c", c_file_str);
        nob_cmd_append(&cmd, "-o", o_file_str);
        
        #ifdef __linux__
        nob_da_append(&procs, nob_cmd_run_async(cmd));
        #elif _WIN32
        if (!nob_cmd_run_sync(cmd)) return 1;
        #endif
    }
    #ifdef __linux__
    if (!nob_procs_wait(procs)) return 1;
    #endif

    {
        Nob_Cmd cmd = {0};
        nob_cmd_append(&cmd, COMPILER_NAME);
        nob_cmd_append(&cmd, "-o", EXECUTABLE_LOCATION);
        nob_cmd_append(&cmd, "-ggdb");
        for (unsigned int i = 0; i < INCLUDE_FILES_COUNT; i++)
        {
            char filename[512] = {0};
            get_file_name_from_location(include_file_locations[i], filename);

            printf("file loc: %s\n", include_file_locations[i]);
            printf("filename: %s\n", filename);

            char* o_file_str = malloc(512); 
            memcpy(o_file_str, BUILD_DIRECTORY, strlen(BUILD_DIRECTORY) + 1);
            strcat(o_file_str, filename);
            strcat(o_file_str, ".o");
            nob_cmd_append(&cmd, o_file_str);
        }
        // add the encode / decode library
        char link_command[PATH_MAX] = "-L";
        strcat(link_command, WORKING_DIRECTORY);
        strcat(link_command, "lib/xed");
        nob_cmd_append(&cmd, link_command, "-l:libxed.a"); 

        if (!nob_cmd_run_sync(cmd)) return 1;
    }
    
    // Compile FetchKernel32Functions
    {
        Nob_Cmd cmd = {0};
        nob_cmd_append(&cmd, "x86_64-w64-mingw32-gcc");
        nob_cmd_append(&cmd, "-O1");
        nob_cmd_append(&cmd, "-o", "build/FetchKernel32Functions.exe", "src/FetchKernel32Functions.c");
        if (!nob_cmd_run_sync(cmd)) return 1;
    }

    // Compile InstructionFetch
    {
        Nob_Cmd cmd = {0};
        nob_cmd_append(&cmd, "nasm");
        nob_cmd_append(&cmd, "-f", "win64");
        nob_cmd_append(&cmd, "src/FetchInstruction.asm", "-o", "build/FetchInstruction.o");
        //if (!nob_cmd_run_sync(cmd)) return 1;
    }
    
    // Compile Process
    {
        {
            Nob_Cmd cmd = {0};
            nob_cmd_append(&cmd, "x86_64-w64-mingw32-gcc");
            nob_cmd_append(&cmd, "-f" "PIE", "-O0");
            nob_cmd_append(&cmd, "-c", "src/Process.c", "-o", "build/Process.o");
            if (!nob_cmd_run_sync(cmd)) return 1;
        }
        {
            Nob_Cmd cmd = {0};
            nob_cmd_append(&cmd, "nasm");
            nob_cmd_append(&cmd, "-f", "win64");
            nob_cmd_append(&cmd, "src/AsmPayload.asm", "-o", "build/AsmPayload.o");
            if (!nob_cmd_run_sync(cmd)) return 1;
        }
        {
            Nob_Cmd cmd = {0};
            nob_cmd_append(&cmd, "x86_64-w64-mingw32-gcc");
            nob_cmd_append(&cmd, "-f" "PIE", "-O0");
            nob_cmd_append(&cmd, "-c", "src/ProcessLib.c", "-o", "build/ProcessLib.o");
            if (!nob_cmd_run_sync(cmd)) return 1;
        }
        {
            Nob_Cmd cmd = {0};
            nob_cmd_append(&cmd, "x86_64-w64-mingw32-gcc");
            nob_cmd_append(&cmd, "-shared");
            nob_cmd_append(&cmd, "-o", "build/Process.dll", "build/Process.o", "build/AsmPayload.o", "build/ProcessLib.o");
            if (!nob_cmd_run_sync(cmd)) return 1;
        }
        {
            Nob_Cmd cmd = {0};
            nob_cmd_append(&cmd, "x86_64-w64-mingw32-gcc");
            nob_cmd_append(&cmd, "-o", "build/ProcessTest.exe", "build/Process.o", "build/AsmPayload.o", "build/ProcessLib.o");
            if (!nob_cmd_run_sync(cmd)) return 1;
        }
    }

    // Compile PreProcess
    {
        Nob_Cmd cmd = {0};
        nob_cmd_append(&cmd, "nasm");
        nob_cmd_append(&cmd, "-f", "bin");
        nob_cmd_append(&cmd, "src/PreProcess.asm", "-o", "build/PreProcess.bin");
        if (!nob_cmd_run_sync(cmd)) return 1;
    }

    // Compile PostProcess
    {
        Nob_Cmd cmd = {0};
        nob_cmd_append(&cmd, "nasm");
        nob_cmd_append(&cmd, "-f", "bin");
        nob_cmd_append(&cmd, "src/PostProcess.asm", "-o", "build/PostProcess.bin");
        if (!nob_cmd_run_sync(cmd)) return 1;
    }

run_skip:
    if (mainCmd == RUN || mainCmd == JUST_RUN)
    {
        #ifdef __linux__
            system("./build/main");
        #elif _WIN32
            char proj_dir[PATH_MAX];
            if (getcwd(proj_dir, sizeof(proj_dir)) == NULL)
                fprintf(stderr, "Couldn't get project directory.");
            
            char* command = malloc(PATH_MAX + strlen("main.exe"));
            memcpy(command, "\"", strlen("\"") + 1);
            strcat(command, proj_dir);
            strcat(command, "/");
            strcat(command, BUILD_DIRECTORY);
            strcat(command, "main.exe\"");
            printf("\n\nRUNNING PROGRAM\n\n");
            system(command);
        #endif 
    }
    else if (mainCmd == DEBUG || mainCmd == JUST_DEBUG)
    {
        #ifdef __linux__
            system("gdb ./build/main");
        #elif _WIN32
            system("gdb build/main.exe");
        #endif
    }
}
