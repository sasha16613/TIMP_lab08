cmake_minimum_required(VERSION 3.20)
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

project(hello_world)

add_executable(${PROJECT_NAME} main.cpp)

#install(TARGETS ${PROJECT_NAME} RUNTIME DESTINATION bin)
