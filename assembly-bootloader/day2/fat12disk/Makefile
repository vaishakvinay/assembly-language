ASM=nasm
SRC_DIR=src
BUILD_DIR=build

# FLOPPY IMAGE
floppy_image:$(BUILD_DIR)/main.img
$(BUILD_DIR)/main.img:bootloader kernal
		dd if=/dev/zero of=$(BUILD_DIR)/main.img bs=512 count=2880

		mkfs.fat -F 12 -n "8664" $(BUILD_DIR)/main.img

		dd if=$(BUILD_DIR)/bootloader.bin of=$(BUILD_DIR)/main.img conv=notrunc
		
		mcopy -i $(BUILD_DIR)/main.img $(BUILD_DIR)/kernal.bin ":: kernal.bin"



#BOOTLOADER

bootloader:$(BUILD_DIR)/bootloader.bin
$(BUILD_DIR)/bootloader.bin:
		$(ASM) $(SRC_DIR)/bootloader/boot.asm -f bin -o $(BUILD_DIR)/bootloader.bin


#kernal

kernal:$(BUILD_DIR)/kernal.bin
$(BUILD_DIR)/kernal.bin:
		$(ASM) $(SRC_DIR)/kernal/main.asm -f bin -o $(BUILD_DIR)/kernal.bin






		


