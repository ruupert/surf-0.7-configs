# surf version
VERSION = 0.7

# Customize below to fit your system

# paths
PREFIX = /usr/local
MANPREFIX = ${PREFIX}/share/man

X11INC = /usr/local/include/X11
X11LIB = /usr/local/lib/X11

GTKINC = `pkg-config --cflags gtk+-2.0 webkit-1.0`
GTKLIB = `pkg-config --libs gtk+-2.0 webkit-1.0`

# includes and libs
INCS = -I. -I/usr/include -I${X11INC} ${GTKINC}
LIBS = -L/usr/lib -lc -L${X11LIB} -lX11 ${GTKLIB} -lgthread-2.0

# flags
CPPFLAGS = -DVERSION=\"${VERSION}\" -D_DEFAULT_SOURCE
CFLAGS = -std=c99 -pedantic -Wall -Os ${INCS} ${CPPFLAGS}
LDFLAGS = -g ${LIBS}

# Solaris
#CFLAGS = -fast ${INCS} -DVERSION=\"${VERSION}\"
#LDFLAGS = ${LIBS}

# compiler and linker
CC = cc
