# my-os


```
my-os/
├── boot/
│   └── bootloader.asm   # The bootloader
├── kernel/
│   ├── kernel.c         # The kernel written in C
│   ├── kernel.h         # Kernel header file
│   └── Makefile         # Build system for the kernel
├── build/               # Build output directory
└── Makefile             # Top-level build system

```

## Tools and Environment

Operating System: Linux or Windows with WSL (Linux is preferred for OS development).
Compiler: GCC for C/C++ and NASM for Assembly.
Emulator: QEMU or Bochs to test your OS.
Disk Tools: dd for writing the bootloader to a disk image