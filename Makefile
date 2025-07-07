SRC := src/polar.cpp

lib: 
	g++ $(SRC) -c -o out/polar -std=c++23
	ar rvs out/libPolar.a out/polar
	rm out/polar

test:
	g++ -Isrc -Lout -lPolar -std=c++23 test/main.cpp -o out/test

run: lib test 
	./out/test
