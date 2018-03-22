CXXFLAGS = -Wall -std=c++14 -O2 -g
LDFLAGS = `pkg-config --cflags opencv`

all: sayHello

sayHello:sayHello.o module1.o
	g++ $(CXXFLAGS) -o $@ $(LDFLAGS) $^

[%.o:%.cpp
	g++ $(CXXFLAGS) -c $<] Supprimable, automatique

clean:
	rm -f *.o sayHello
