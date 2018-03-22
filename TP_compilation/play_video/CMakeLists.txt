cmake_minimum_required( VERSION 3.0 )
project( Play_Video )
set( CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++14 -Wall -Wextra" )
set( CMAKE_BUILD_TYPE Debug )  # dans la vraie vie, ne pas mettre cette ligne

find_package(Boost REQUIRED COMPONENTS system filesystem)
include_directories(${Boost_INCLUDE_DIRS})
include_directories(src)

find_package(PkgConfig REQUIRED)
pkg_check_modules(PKG REQUIRED gtkmm-3.0 libvlc)
include_directories(${PKG_INCLUDE_DIRS})

add_library(play_video STATIC src/play_video/Filesystem.cpp)
target_link_libraries(play_video ${Boost_LIBRARIES})

add_executable( play_video_test
  ./src/play_video_test/play_video_test.cpp)
target_link_libraries(play_video_test play_video)

add_executable( play_video_gui
  ./src/play_video_gui/play_video_gui.cpp
  ./src/play_video_gui/PlayerWindow.cpp)
target_link_libraries(play_video_gui play_video ${PKG_LIBRARIES})