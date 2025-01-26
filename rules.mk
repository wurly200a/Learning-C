CC = gcc
CFLAGS = -Wall -Wextra -std=c99 -I$(SRC_DIR) -fprofile-arcs -ftest-coverage
LDFLAGS = -lcmocka -fprofile-arcs -ftest-coverage

all: $(TARGET)

$(TARGET): $(OBJ)
	$(CC) $(CFLAGS) -o $@ $^ $(LDFLAGS)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(TARGET) $(OBJ)

.PHONY: all clean
