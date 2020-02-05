# Target library
lib := libuthread.a

all: $(lib)

queue.o: queue.c
	gcc -o queue.o queue.c

libuthread.a: queue.o
	ar rcs libuthread.a queue.o

clean:
	rm -f libuthread.a





## TODO: Phase 1.1
