CC = gcc
CFLAGS = -Wall -Wextra -std=c99

TARGET = stego
SRC = main.c encode.c decode.c

all:
	$(CC) $(CFLAGS) $(SRC) -o $(TARGET)

clean:
	rm -f $(TARGET)
