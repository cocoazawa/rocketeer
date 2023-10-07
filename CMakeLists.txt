cmake_minimum_required(VERSION 3.10)

project(RocketeerDX)

add_executable(RocketeerDX main.cpp)

set(GLFW_BUILD_DOCS OFF CACHE BOOL "" FORCE)
set(GLFW_BUILD_TESTS OFF CACHE BOOL "" FORCE)
set(GLFW_BUILD_EXAMPLES OFF CACHE BOOL "" FORCE)

target_link_libraries(RocketeerDX glfw)

find_package(OpenGL REQUIRED)

target_link_libraries(RocketeerDX OpenGL::GL)

add_subdirectory(glfw-d973acc123826666ecc9e6fd475682e3d84c54a6/)
