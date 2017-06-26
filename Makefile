# Declaration of variables
CC = arm-linux-gnueabihf-g++-5
CC_FLAGS = -I src/pigpio -I src/RTIMULib/RTIMULib -std=c++14
 
# File names
EXEC = run
SOURCES = $(wildcard src/*.cpp)
OBJECTS = $(SOURCES:.cpp=.o)
 
# Main target
$(EXEC): $(OBJECTS)
	$(CC) $(CC_FLAGS) $(OBJECTS) -o $(EXEC)
 
# To obtain object files
%.o: %.cpp
	$(CC) -c $(CC_FLAGS) $< -o $@
 
# To remove generated files
clean:
	rm -f $(EXEC) $(OBJECTS)
