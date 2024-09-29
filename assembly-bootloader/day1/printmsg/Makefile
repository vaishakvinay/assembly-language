ASM=nasm
SRC_DIR=src
BUILD_DIR=build

# Rule to generate main.img from main.bin
$(BUILD_DIR)/main.img: $(BUILD_DIR)/main.bin
		cp $(BUILD_DIR)/main.bin $(BUILD_DIR)/main.img
		truncate -s 1440k $(BUILD_DIR)/main.img

# Rule to generate main.bin from main.asm
$(BUILD_DIR)/main.bin: $(SRC_DIR)/main.asm
		$(ASM) $(SRC_DIR)/main.asm -f bin -o $(BUILD_DIR)/main.bin
		


