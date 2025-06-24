CC = gcc
CFLAGS = -Wall -std=c99 -pedantic -g

.PHONY: all clean

all: ex

clean:
	rm -f ex ex.o

ex: ex.o
	$(CC) ex.o -o ex -lm -lmpc

ex.o: ex.c
	$(CC) $(CFLAGS) -c ex.c
