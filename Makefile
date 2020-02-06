# Target library
lib := libuthread.a
CFLAGS := -Werror -Wall
CC := gcc

all: $(lib)

$(lib): queue.o
	ar rcs libuthread.a queue.o

queue.o: queue.c queue_tester.c
	$(CC) $(CFLAGS) -o queue.o queue.c queue_tester.c

clean:
	rm -f libuthread.a *.o

