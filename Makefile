CC=latexmk
#CFLAGS= 
#LDFLAGS=
.PHONY: all
.DEAFAULT_GOAL := all

WASTE_FILES=main.aux main.log main.toc main.fls main.out main.fdb_latexmk

all: latex clean

latex: main.tex
	$(CC) main.tex

clean: $(WASTE_FILES)
	rm $(WASTE_FILES)

