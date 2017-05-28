all:	
	g++ -Wall -pthread -std=c++14 -o bin/drone src/*.cpp src/*.h -lpigpio -lrt

