# Target library
lib := libuthread.a
CFLAGS := -Werror -Wall -Werror
CC := gcc

all: $(lib)

$(lib): queue.o
	ar rcs libuthread.a queue.o

queue.o: queue.c
	$(CC) $(CFLAGS) -o queue.o queue.c

uthread.o: uthread.c queue.c
	$(CC) $(CFLAGS) -o uthread.o uthread.c queue.c

clean:
	rm -f libuthread.a *.o

