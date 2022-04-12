OBJS1	= server.o
OBJS2	= client.o
SOURCE1	= server.c
SOURCE2 = client.c
HEADER	= 
OUT1	= server.out
OUT2	= client.out
CC	 	= gcc
FLAGS	= -g -c -Wall
LFLAGS	= -lpthread

server: $(OBJS1)
	$(CC) -g $(OBJS1) -o $(OUT1) $(LFLAGS)
	
client: $(OBJS2)
	$(CC) -g $(OBJS2) -o $(OUT2) $(LFLAGS)

server.o: server.c
	$(CC) $(FLAGS) server.c 

client.o: client.c
	$(CC) $(FLAGS) client.c 


clean:
	rm -f $(OBJS1) $(OUT1)
	rm -f $(OBJS2) $(OUT2)
