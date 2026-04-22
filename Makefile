
CC = gcc

# param (-Wall: enable warming, -g: enable debug info, -I: strat from root)
CFLAGS = -Wall -g -I. -fPIC

# link param
LDFLAGS = -lm -shared -Wl,--export-all-symbols

# ouput filename
TARGET = 2D_DIC.dll

# source (find all .c)
SRCS = $(wildcard *.c) \
       $(wildcard common/*.c) \
       $(wildcard core/*.c) \
       $(wildcard factory/*.c) \
       $(wildcard image/*.c)

all: $(TARGET)

$(TARGET): $(SRCS)
	$(CC) $(CFLAGS) $(SRCS) -o $(TARGET) $(LDFLAGS)

clean:
	rm -f $(TARGET)