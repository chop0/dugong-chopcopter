#Declaration of variables
COMPILER_PREFIX = arm-linux-gnueabihf-
CXX = $(COMPILER_PREFIX)g++
CXX_FLAGS = -lpthread -Wall -g -lrt -I src/pigpio -I src/RTIMULib/RTIMULib -std=c++14

# File names
EXEC = bin/driver
SOURCES = $(wildcard src/*.cpp) bin/libRTIMULib.so.7 bin/libpigpio.so # Using shared objects as sources so we don't have to worry about g++ linker flags
OBJECTS = $(SOURCES:.cpp=.o)

# Main target
$(EXEC): $(OBJECTS)
	$(CXX) $(CXX_FLAGS) $(OBJECTS) -o $(EXEC)

# To obtain object files
%.o: %.cpp
	mkdir -p bin
	$(CXX) -c $(CXX_FLAGS) $< -o $@

bin/libRTIMULib.so.7:
	        cd src/RTIMULib/RTIMULib;       mkdir -p build; cd build;       cmake ..;	make;
		cp src/RTIMULib/RTIMULib/build/libRTIMULib.so.7.2.1 bin/libRTIMULib.so.7

bin/libpigpio.so:
	make -C src/pigpio
	cp src/pigpio/libpigpio.so bin/libpigpio.so

# To remove generated files
clean:
	sudo rm -f $(EXEC) $(OBJECTS)
