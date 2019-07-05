#g++ ./src/test.cpp -c -o ./build/test.o -I ./include
#g++ ./src/main.cpp -c -o ./build/main.o -I ./include
#g++ ./build/main.o ./build/test.o -g -o ./build/Helloworld -I ./include

CXX = g++
CXXFLAGS = -I ./include

SRCDIR = ./src
INCDIR = ./include
BUILDDIR = ./build

TARGET = $(BUILDDIR)/Helloworld

$(TARGET): $(BUILDDIR)/main.o $(BUILDDIR)/test.o
	$(CXX) $(CXXFLAGS) $^ -g $(OUTPUT_OPTION)

$(BUILDDIR)/main.o: $(SRCDIR)/main.cpp
	$(CXX) $(CXXFLAGS) $< -c $(OUTPUT_OPTION)

$(BUILDDIR)/test.o: $(SRCDIR)/test.cpp
	$(CXX) $(CXXFLAGS) $< -c $(OUTPUT_OPTION)
