all:	
	g++ -Wall -pthread -o drone src/*.cpp -lpigpio -lrt
