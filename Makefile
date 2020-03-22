AC=nasm
LFLAGS=-lSystem
ARCH=macho64
OUT_DIR=bin
SRC_DIR=src

$(OUT_DIR)/%: $(SRC_DIR)/%.o
	@ echo "> Linking $<"
	ld $(LFLAGS) -o $@ $<

$(SRC_DIR)/%.o: $(SRC_DIR)/%.asm
	@ echo "> Compiling $<"
	@ mkdir -p $(OUT_DIR)
	$(AC) -f $(ARCH) $<

clean:
	@ echo "> Cleaning environment"
	rm -f $(OUT_DIR)/*