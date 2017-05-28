all:	
	g++ -Wall -pthread -std=c++14 -o bin/drone src/* -lpigpio -lrt
