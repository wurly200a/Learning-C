SRC_DIR = ../../src/01_hello_world
SRC = $(SRC_DIR)/hello_world.c test_hello_world.c
OBJ = $(SRC_DIR)/hello_world.o test_hello_world.o
TARGET = test_hello_world

include ../../rules.mk

test: $(TARGET)
	./$(TARGET)
