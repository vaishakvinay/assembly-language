# create fat12 disk using assembly

## Folder Structure 
1. Makefile
2. Build folder containing `main.img`,`bootloader.bin` and 'main.img'
3. Src folder containing bootloader folder containing `boot.asm` and kernal folder with  `main.asm`
4. fat header

## How to Run 
To run the bootloader, use the following command:
```bash
qemu-system-i386 -fda boot.img

