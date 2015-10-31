DIR_SEP=/
include ./makefile.env

all: build

build: $(XXHASH_BIN)

$(XXHASH_BIN): $(XXHASH_SRC)
	$(CC) $(CCFLAGS) "$<" -o "$@"

clean:
	@if [ -d "$(XXHASH_BIN_DIR)" ]; then find $(XXHASH_BIN_DIR)/* -type f -exec rm -f {} +; fi;

rebuild: clean build