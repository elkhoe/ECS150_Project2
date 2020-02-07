# Target library
lib := libuthread.a
CFLAGS := -Werror -Wall -Werror
CC := gcc

all: $(lib)

$(lib): queue.o uthread.o context.o preempt.o
	ar rcs libuthread.a queue.o uthread.o

preempt.o: preempt.c
	$(CC) $(CFLAGS) -c -o preempt.o preempt.c

queue.o: queue.c
	$(CC) $(CFLAGS) -c -o queue.o queue.c

uthread.o: uthread.c
	$(CC) $(CFLAGS) -c -o uthread.o uthread.c

context.o: context.c
	$(CC) $(CFLAGS) -c -o context.o context.c

clean:
	rm -f libuthread.a *.o

