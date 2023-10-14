set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

cmake_minimum_required(VERSION 3.10.0)

project(RocketeerDX)

add_executable(RocketeerDX src/main.cpp)
set(GLFW_BUILD_DOCS OFF CACHE BOOL "" FORCE)
set(GLFW_BUILD_TESTS OFF CACHE BOOL "" FORCE)
set(GLFW_BUILD_EXAMPLES OFF CACHE BOOL "" FORCE)

target_link_libraries(RocketeerDX /usr/local/lib/libglfw.3.3.dylib)
target_link_libraries(RocketeerDX /usr/local/lib/libvulkan.1.dylib)
target_link_libraries(RocketeerDX /usr/local/lib/libvulkan.1.3.261.dylib)

target_include_directories(RocketeerDX PUBLIC src/)
target_include_directories(RocketeerDX PUBLIC /usr/local/include/)
target_include_directories(RocketeerDX PUBLIC ././././VulkanSDK/1.3.261.1/macOS/include/)
include_directories($././././VulkanSDK/1.3.261.1/macOS/lib)
include_directories($/usr/local/lib)