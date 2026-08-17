# Compiler settings
CXX = g++
CXXFLAGS = -std=c++11 -Wall -Wextra -O2
LDFLAGS =

# Target executable
TARGET = raytracer

# Source files
SOURCES = main.cc
OBJECTS = $(SOURCES:.cc=.o)

# Build target
all: $(TARGET)

$(TARGET): $(OBJECTS)
	$(CXX) $(CXXFLAGS) -o $(TARGET) $(OBJECTS) $(LDFLAGS)

# Compile source files to object files
%.o: %.cc
	$(CXX) $(CXXFLAGS) -c $< -o $@

# Clean build artifacts
clean:
	rm -f $(OBJECTS) $(TARGET)

# Rebuild everything
rebuild: clean all

# Run the program and save output to image
run: $(TARGET)
	./$(TARGET) > image.ppm

.PHONY: all clean rebuild run
