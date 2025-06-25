CC = gcc
CPPFLAGS = -I.
CFLAGS = -Wall -Wextra -std=c99 -pedantic -g

.PHONY : all clean

clean :
	rm -f parser mpc.o ex.o

#compile object files

ex.o : ex.c mpc.h
	$(CC) -c $(CPPFLAGS) $(CFLAGS) ex.c -o ex.o

mpc.o : mpc.c mpc.h
	$(CC) -c $(CPPFLAGS) $(CFLAGS) mpc.c -o mpc.o

#linking

parser: mpc.o ex.o
	$(CC) $(CFLAGS) mpc.o ex.o -o parser
