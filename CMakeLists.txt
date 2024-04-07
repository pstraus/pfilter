#Set minimum version
cmake_minimum_required(VERSION 3.26)

#Project name
project(pfilter LANGUAGES CXX CUDA )

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED)
#set(CMAKE_CXX_FLAGS "-Wl, -Wno-undef")
#set(CMAKE_CXX_FLAGS -lstdc++)

add_subdirectory(kernels)
add_subdirectory(src)
add_subdirectory(test)

find_package(Eigen3 CONFIG REQUIRED)
find_package(CUDA)

set_target_properties(pfilter PROPERTIES CUDA_SEPARABLE_COMPILATION ON)

add_executable(main)
target_sources( main
                PRIVATE "src/main.cpp"
              )

target_include_directories(main
                          PRIVATE "{CMAKE_SOURCE_DIR}/include"
                          PRIVATE ${Boost_INCLUDE_DIRS}
                          )
                    
target_link_libraries( main 
                       PRIVATE 
                       Eigen3::Eigen
                     )

