CC=g++ # Compiler
LIBS=-lstdc++ # Libraries
CC_CFLAGS=-O3 -mtune=native -I./hdr # Compilation flags
CC_LDFLAGS= -lstdc++ -I./hdr # Link flags

OBJECTS= obj/main.o obj/add_three.o obj/add_five.o # Object (source) files

EXECUTABLE=pract # Executable name

all: $(OBJECTS) serial

serial: $(OBJECTS)
	$(CC) $(CC_LDFLAGS) $(LIBS) $(OBJECTS) -o $(EXECUTABLE)

$(OBJECTS): obj/%.o: src/%.cpp
	$(CC) -c -o $@ $(CC_CFLAGS) $<

clean:
	@rm -f obj/*.o
