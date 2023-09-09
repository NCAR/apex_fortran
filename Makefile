# A very basic Makefile
# compile the test code "test.f" into "test.bin" with `$ make`,
# and clean up with `$ make clean`.

CC=gfortran
CFLAGS=-Wall

test.bin: apex.f90 test.f
	$(CC) $(CFLAGS) apex.f90 test.f -o $@

clean:
	rm test.bin apex.mod
