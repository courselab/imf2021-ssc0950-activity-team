all: libcypher.so compile clean

compile:
	@gcc decode.o -o decode -lm

decode.o:
	@gcc -Wall -shared -o decode.o

run:
	@decode -d -k ABC crypt.dat decodedcrypt

tar:
	@gzip  -r decode *.o *.dat Makefile
