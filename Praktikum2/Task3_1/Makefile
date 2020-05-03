OUT = main
OBJECTS = hello_world
CC = g++

$(OUT): $(OUT).o $(OBJECTS).o
	$(CC) $(OUT).o $(OBJECTS).o -o $(OUT).out

all: $(OUT) $(OBJECTS).a
.PHONY: all

clean:
	rm *.o $(OUT) $(OUT).out
.PHONY: clean

$(OBJECTS).a: $(OBJECTS).o
	ar rcs $@ $<

$(OUT).o: $(OUT).cpp
	$(CC) -c $<

$(OBJECTS).o: $(OBJECTS).cpp
	$(CC) -c $<
