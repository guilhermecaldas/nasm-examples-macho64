AC=nasm
LFLAGS=-lSystem
NFLAGS=-g -F dwarf
ARCH=macho64
OUT_DIR=bin
SRC_DIR=src

$(OUT_DIR)/%: $(OUT_DIR)/%.o
	@ echo "> Linking $<"
	ld $(LFLAGS) -o $@ $<

$(OUT_DIR)/%.o: $(SRC_DIR)/%.asm
	@ echo "> Compiling $<"
	@ mkdir -p $(OUT_DIR)
	$(AC) -f $(ARCH) $(NFLAGS) -o $@ $<

clean:
	@ echo "> Cleaning environment"
	rm -f $(OUT_DIR)/*