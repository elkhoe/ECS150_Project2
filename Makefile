# Target library
lib := libuthread.a
CFLAGS := -Werror -Wall
CC := gcc

all: $(lib)

$(lib): queue.o
	ar rcs libuthread.a queue.o

queue.o: queue.c queue_tester.c
	$(CC) $(CFLAGS) -o queue.o queue.c queue_tester.c

uthread.o: uthread.c uthread_hello.c
	$(CC) $(CFLAGS) -o uthread.o uthread.c uthread_hello.c

clean:
	rm -f libuthread.a *.o

