cmake_minimum_required( VERSION 3.0 )
project( sayHello )
set( CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++14 -Wall -Wextra" )
set( CMAKE_BUILD_TYPE Debug )

add_executable( main_sayHello.out sayHello.cpp module1.cpp )