void kernel_main() {
    char *video_memory = (char *)0xB8000;
    const char *message = "Welcome to my-os!";
    for (int i = 0; message[i] != '\0'; i++) {
        video_memory[i * 2] = message[i];
        video_memory[i * 2 + 1] = 0x07;  // Light grey on black
    }
    while (1) {} // Infinite loop to keep the kernel running
}
