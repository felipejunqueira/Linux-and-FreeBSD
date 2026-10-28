CC = gcc
CFLAGS = -Wall -Wextra -std=c11
TARGET = memory_cow

all: $(TARGET)

$(TARGET): LinuxFreeBSD.c
	$(CC) $(CFLAGS) -o $@ $<

run: $(TARGET)
	./$(TARGET)

clean:
	rm -f $(TARGET)

.PHONY: all run clean
