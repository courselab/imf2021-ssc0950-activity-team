all: clean decode.o libcypher.so compile clean

compile:
	@gcc decode.o -o decode

run:
	@decode -d -k ABC <input-file> <output-file>

tar:
	@gzip  -r decode *.o *.dat Makefile
