AC=nasm
LFLAGS=-lSystem
ARCH=macho64
OUT_DIR=bin
SRC_DIR=src

all: clean hello

$(OUT_DIR)/%: $(SRC_DIR)/%.o
	@ echo "> Linking $<"
	ld $(LFLAGS) -o $@ $<

$(SRC_DIR)/%.o: $(SRC_DIR)/%.asm
	@ echo "> Compiling $<"
	$(AC) -f $(ARCH) $<

clean:
	@ echo "> Cleaning environment"
	rm -f $(OUT_DIR)/*