# Declaration of variables
COMPILER_PREFIX = 
CXX = g++
CXX_FLAGS = -I src/pigpio -I src/RTIMULib/RTIMULib -std=c++14
 
# File names
EXEC = run
SOURCES = $(wildcard src/*.cpp)
OBJECTS = $(SOURCES:.cpp=.o)
 
# Main target
$(EXEC): $(OBJECTS)
	$(CXX) $(CXX_FLAGS) $(OBJECTS) -o $(EXEC)
 
# To obtain object files
%.o: %.cpp
	$(CXX) -c $(CXX_FLAGS) $< -o $@
 
# To remove generated files
clean:
	rm -f $(EXEC) $(OBJECTS)
