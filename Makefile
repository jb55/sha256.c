
SRC = $(filter-out test.c, $(wildcard *.c))
CFLAGS += -std=c99 -Wall
DEPS = $(wildcard deps/*/*.c)
OBJS = $(DEPS:.c=.o)

%.o: %.c
	$(CC) $< -Ideps -c -o $@ $(CFLAGS)

sha256.o: sha256.h sha256.c

test: $(OBJS) sha256.o
	$(CC) sha256.o -Ideps $(OBJS) -Wall -Werror test.c -o test
	./test

clean:
	rm -f sha256.o
	rm -f test
	rm -f $(OBJS)

.PHONY: test
