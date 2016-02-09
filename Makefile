BIN=bin/polygons
FLAGS=-O2 -Wall -fwarn-tabs --make -fforce-recomp -o $(BIN)

all: test

test: $(BIN)
	time $(BIN) 10

$(BIN): polygons.hs
	mkdir -p bin/
	ghc $(FLAGS) Polygons.hs

clean:
	-rm -rf bin
