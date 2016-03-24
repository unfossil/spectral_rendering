CC = clang

CFLAGS = -Wall -pedantic -std=c99

OBJS = specrend.o
LIBS := -lm $(LIBS)

RM = rm -f

TARGET = specrend

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) -o $@ $^ $(LIBS) 

.c.o:
	$(CC) $(CFLAGS) -c $*.c

clean:
	$(RM) $(TARGET) $(OBJS)

.PHONY: clean all
