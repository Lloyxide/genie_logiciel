./clean.sh
g++ -c -Wall sayHello.cpp
g++ -c -Wall -std=c++14 module1.cpp
g++ -Wall sayHello.o module1.o
