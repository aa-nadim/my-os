# Directories
BUILD_DIR = ../build

# Files
KERNEL_SOURCE = kernel.c
KERNEL_BIN = $(BUILD_DIR)/kernel.bin
KERNEL_OBJ = $(BUILD_DIR)/kernel.o

# Compiler
CC = gcc
LD = ld

# Compiler flags
CFLAGS = -m32 -ffreestanding -nostdlib -nostdinc -fno-builtin -fno-stack-protector
LDFLAGS = -Ttext 0x1000 --oformat binary

# Default target
all: $(KERNEL_BIN)

# Compile kernel source code into an object file
$(KERNEL_OBJ): $(KERNEL_SOURCE)
	$(CC) $(CFLAGS) -c $< -o $@

# Link the object file into a binary
$(KERNEL_BIN): $(KERNEL_OBJ)
	$(LD) $(LDFLAGS) $< -o $@

# Clean build files
clean:
	rm -f $(BUILD_DIR)/kernel.*
