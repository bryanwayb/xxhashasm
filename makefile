CC=emcc
CCEXPORTED="_XXH32"
CCFLAGS=-O2 --memory-init-file 0 -s EXPORTED_FUNCTIONS='[$(CCEXPORTED)]'

XXHASH_SRC_DIR=./xxhash
XXHASH_BIN_DIR=./build
XXHASH_BIN=$(XXHASH_BIN_DIR)/xxhash.js
XXHASH_SRC=$(XXHASH_SRC_DIR)/xxhash.c

all: build

build: $(XXHASH_BIN)

$(XXHASH_BIN): $(XXHASH_SRC)
	$(CC) $(CCFLAGS) $< -o $@

clean:
	@if [ -d "$(XXHASH_BIN_DIR)" ]; then find $(XXHASH_BIN_DIR)/* -type f -exec rm -f {} +; fi;

rebuild: clean build