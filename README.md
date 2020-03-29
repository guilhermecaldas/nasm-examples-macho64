# NASM examples Mach-O 64

Demo programs in NASM (Assembly) for MacOS x86_64 (macho64)

## Notes
- Some pieces of code are based on 
[Assembly Programming Tutorial](https://www.tutorialspoint.com/assembly_programming/index.htm) 
from Tutorials Point
- It works, but doesn't mean it's under the best practices of performance or styling
(at least I tried)
- It's just a public study repository: **Don't use my code for production purpose. Don't 
blame my person, please!**

## Installing dependencies

In order to compile this code, you need to:

- Install the latest version of `nasm`:
```bash
$ brew install nasm
```
- Install latest version of `make`:
```bash
$ brew install make
```

## Compiling code

To compile code in `src/`, just run:
```bash
$ make bin/<file_name>
```
For example:
```bash
$ make bin/hello # (without extension)
```

Your binary will be generated inside `bin/` directory. To execute, just run:
```bash
$ bin/<binary_name>
```
in this example, `$ bin/hello`

## Bugs and suggestions

If you wish to report a bug or suggest any code improvement, 
[create a new issue here](https://github.com/guilhermecaldas/nasm-examples-macho64/issues/new).
You will be very welcome!