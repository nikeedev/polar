SRC := src/main.cpp

build: 
	g++ $(SRC) -o polar -std=c++23

run: build
	./polar
