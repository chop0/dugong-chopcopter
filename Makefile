\
#Declaration of variables
COMPILER_PREFIX = 
CXX = g++
CXX_FLAGS = -Wall -lrt -I src/pigpio -I src/RTIMULib/RTIMULib -std=c++14
 
# File names
EXEC = bin/driver
SOURCES = $(wildcard src/*.cpp) /usr/lib/libRTIMULib.so /usr/lib/libpigpio.so # Using shared objects as sources so we don't have to worry about g++ linker flags
OBJECTS = $(SOURCES:.cpp=.o)
 
# Main target
$(EXEC): $(OBJECTS)
	$(CXX) $(CXX_FLAGS) $(OBJECTS) -lpigpio -lRTIMULib -o $(EXEC) 
 
# To obtain object files
%.o: %.cpp
	mkdir -p bin
	$(CXX) -c $(CXX_FLAGS) $< -o $@

/usr/lib/libRTIMULib.so:
	        cd src/RTIMULib/RTIMULib;       mkdir -p build; cd build;       cmake ..;	make clean;	make; sudo cp -L libRTIMULib.so.7 /usr/lib/libRTIMULib.so

/usr/lib/libpigpio.so:
	make -C src/pigpio
	sudo cp -L src/pigpio/libpigpio.so /usr/lib
# To remove generated files
clean:
	sudo rm -f $(EXEC) $(OBJECTS)
