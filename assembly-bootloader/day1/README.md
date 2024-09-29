# assembly-bootloader
# My Bootloader Project 

## Folder Structure 
1. Makefile
2. Build folder containing `main.img` and `main.bin`
3. Src folder containing `main.asm`

## How to Run 
To run the bootloader, use the following command:
```bash
qemu-system-i386 -fda boot.img

