#
#	Simple Terminal config for mCLi
#		based on RG353 ver https://github.com/leonkasovan/st
#

# st version
VERSION = 0.3.1

# Customize below to fit your system

# compiler and linker
CC = /usr/bin/aarch64-linux-gnu-gcc
SYSROOT = $(shell ${CC} --print-sysroot)

# includes and libs
INCS = -I. -I${SYSROOT}/usr/include/SDL -D_GNU_SOURCE=1 -D_REENTRANT -DRG353P
LIBS = -lc -L${SYSROOT}/usr/lib -lSDL -lpthread -Wl,-Bstatic,-lutil,-Bdynamic

# flags
CPPFLAGS = -DVERSION=\"${VERSION}\"
CFLAGS += -g2 -Os -Wall ${INCS} ${CPPFLAGS}
LDFLAGS += ${CFLAGS} ${LIBS} -lSDL -s
