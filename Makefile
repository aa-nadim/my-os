# Directories
BUILD_DIR = build
BOOT_DIR = boot
KERNEL_DIR = kernel

# Files
BOOTLOADER = $(BOOT_DIR)/bootloader.asm
KERNEL = $(KERNEL_DIR)/kernel.bin
OS_IMAGE = $(BUILD_DIR)/os-image.bin
BOOTLOADER_BIN = $(BUILD_DIR)/bootloader.bin

# Compiler and Assembler
ASM = nasm

# Default target
all: $(OS_IMAGE)

# Build bootloader
$(BOOTLOADER_BIN): $(BOOTLOADER)
	$(ASM) -f bin $< -o $@

# Combine bootloader and kernel into OS image
$(OS_IMAGE): $(BOOTLOADER_BIN) $(KERNEL)
	cat $^ > $@

# Run the OS in QEMU
run: $(OS_IMAGE)
	qemu-system-x86_64 -drive format=raw,file=$(OS_IMAGE)

# Clean the build directory
clean:
	rm -rf $(BUILD_DIR)/*
	make -C $(KERNEL_DIR) clean

# Ensure build directory exists
$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

# Build kernel by invoking kernel/Makefile
$(KERNEL):
	make -C $(KERNEL_DIR)

# Phony targets
.PHONY: all run clean

