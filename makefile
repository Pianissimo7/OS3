OBJS	= server.o
SOURCE	= server.c
HEADER	= 
OUT	= server.out
CC	 = gcc
FLAGS	 = -g -c -Wall
LFLAGS	 = -lpthread

all: $(OBJS)
	$(CC) -g $(OBJS) -o $(OUT) $(LFLAGS)

server.o: server.c
	$(CC) $(FLAGS) server.c 


clean:
	rm -f $(OBJS) $(OUT)