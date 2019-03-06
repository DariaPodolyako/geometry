CC=g++
CFLAGS=-c -Wall
LDFLAGS=
SOURCES=main.c
OBJECTS=$(SOURCES:.c=.o)
EXECUTABLE=geometry

all: $(SOURCES) $(EXECUTABLE)

 $(EXECUTABLE): $(OBJECTS)
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@

 .c.o:
	$(CC) $(CFLAGS) $< -o $@

clean:
	@rm -r -f $(BIN)
