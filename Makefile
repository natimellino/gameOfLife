CC = gcc
CFLAGS = -std=gnu99 -Wall -Wextra -pedantic -lpthread
BOARD = board.o
GAME = game.o

main: main.c $(BOARD) $(GAME)
	$(CC) main.c $(BOARD) $(GAME) -o main.o $(CFLAGS)

$(BOARD): board.c
	$(CC) board.c -c -o $(BOARD) $(CFLAGS)

$(GAME): game.c
	$(CC) game.c -c -o $(GAME) $(CFLAGS)

.PHONY: clean
clean:
	rm -rf *.o