all: clean hello

hello: hello.o
	@ echo "> Linking"
	ld -no_pie -macosx_version_min 10.7.0 -lSystem -o hello $^

hello.o:
	@ echo "> Compiling"
	nasm -f macho64 hello.asm

clean:
	@ echo "> Cleaning environment"
	rm -f hello.o hello