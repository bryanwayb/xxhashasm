SHELL_PRE=call
DIR_SEP=^\
!include "makefile.env"

all: build

build: $(XXHASH_BIN)

$(XXHASH_BIN): $(XXHASH_SRC)
	$(CC) $(CCFLAGS) "$?" -o "$@"

clean:
	del /F /Q "$(XXHASH_BIN_DIR)\*.*"

rebuild: clean build