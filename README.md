# Pseudo-VML
Pseudo VML (Virtual Machine Lite) is a library for automated code caving / payload injection, executable analysis and behavior modification.
The tool currently supports x86_64 windows / PE32+ as the modification target, and works for both executables and DLLs.

## Install

### Linux
1. clone the repository `git clone git@github.com:TeYo001/Pseudo-VML.git` or `git clone https://github.com/TeYo001/Pseudo-VML.git`
2. enter the repository
3. compile the build tool `gcc -o nob nob.c` (ensure you have the gnu compiler, both for linux and windows targets)

### Windows
1. clone the repository `git clone git@github.com:TeYo001/Pseudo-VML.git` or `git clone https://github.com/TeYo001/Pseudo-VML.git`
2. enter the repository
3. compile the build tool `x86_64-w64-mingw32-gcc -o nob.exe nob.c` (ensure you have the gnu compiler from mingw)

## Dependencies
* [xed](https://github.com/intelxed/xed): library for disassembly of code sections.
* [nob](https://github.com/tsoding/nob.h): build tool

## Use
Currently the tool is still in development and so is still setup to be a standalone executable, and not a library. This is soon to change.
