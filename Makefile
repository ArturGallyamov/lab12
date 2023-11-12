CC = gcc
CFLAGS = -g
LIBS = -lm
calcul: calculate.o main.o
	$(CC) calculate.o main.o -o calcul $(LIBS)

calculate.o: calculate.c calculate.h
	$(CC) -c calculate.c $(CFLAGS)

main.o: main.c calculate.h
	$(CC) -c main.c $(CFLAGS)

clean:
	-rm ~/work/os/lab_prog/calcul ~/work/os/lab_prog/*.o ~/work/os/lab_prog/*~

