# mcli - simple terminal
# See LICENSE file for copyright and license details.

include config-RG353P.mk
#include config-RG35XX.mk

SRC = mcli.c keyboard.c font.c msg_queue.c
OBJ = ${SRC:.c=.o}

all: options mcli

options:
	@echo mcli build options:
	@echo "CFLAGS   = ${CFLAGS}"
	@echo "LDFLAGS  = ${LDFLAGS}"
	@echo "CC       = ${CC}"

.c.o:
	@echo $(CC) $<
	@${CC} -c ${CFLAGS} $<

mcli: ${OBJ}
	@echo $(CC) -o $@
	@${CC} -o $@ ${OBJ} ${LDFLAGS}

clean:
	@echo cleaning
	@rm -f mcli ${OBJ}

.PHONY: all options clean
