#Declaration of variables
COMPILER_PREFIX = arm-linux-gnueabihf-
CXX = $(COMPILER_PREFIX)g++
CXX_FLAGS = -lpthread -Wall -lrt -I src/pigpio -I src/RTIMULib/RTIMULib -std=c++14
 
# File names
EXEC = bin/driver
SOURCES = $(wildcard src/*.cpp) src/RTIMULib/RTIMULib/build/libRTIMULib.so src/pigpio/libpigpio.so # Using shared objects as sources so we don't have to worry about g++ linker flags
OBJECTS = $(SOURCES:.cpp=.o)
 
# Main target
$(EXEC): $(OBJECTS)
	$(CXX) $(CXX_FLAGS) $(OBJECTS) -o $(EXEC) 
 
# To obtain object files
%.o: %.cpp
	mkdir -p bin
	$(CXX) -c $(CXX_FLAGS) $< -o $@

src/RTIMULib/RTIMULib/build/libRTIMULib.so:
	        cd src/RTIMULib/RTIMULib;       mkdir -p build; cd build; rm -rf *;       cmake ..;	make clean;	make;

src/pigpio/libpigpio.so:
	make -C src/pigpio
# To remove generated files
clean:
	sudo rm -f $(EXEC) $(OBJECTS)
