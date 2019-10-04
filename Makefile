.POSIX:

2BPP   := rgbgfx
ASM    := rgbasm -E

.SUFFIXES: .asm .o .gb .png .2bpp

# Default target
all: build

build: soukoban.gb

clean:
	rm -f $(obj)
	rm -f soukoban.gb soukoban.sym soukoban.map
	find . -iname '*.2bpp' -exec rm {} +

# Objects are assembled from source.
# src/main.o is built from src/main.asm.
obj = src/main.o
asm_files = $(shell find src     -type f -name '*.asm')
gfx_files = $(shell find src/gfx -type f -name '*.png')
bin_files = $(shell find src     -type f -name '*.bin')

%.2bpp: %.png
	$(2BPP) -o $@ $<

src/main.o: $(asm_files) $(gfx_files:.png=.2bpp) $(bin_files)

.asm.o:
	$(ASM) -i src/ -o $@ $<

# Then we link them to create a playable image.
# This also spits out game.sym, which lets you use labels in bgb.
# Generating a mapfile is required thanks to a bug in rgblink.
soukoban.gb: $(obj)
	rgblink -n $*.sym -m $*.map -o $@ $(obj)
	#rgbfix -v -p 0xff $@
	rgbfix  -n 0 -r 0 -l 0xce -m 0 -p 0xff -t "SOUKOBAN" -v $@
	
	md5sum -c soukoban.md5
