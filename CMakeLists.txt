#Set minimum version
cmake_minimum_required(VERSION 3.26)

#Project name
project(pfilter)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED)
#set(CMAKE_CXX_FLAGS "-Wl, -Wno-undef")
#set(CMAKE_CXX_FLAGS -lstdc++)

#VCPKG compiled opencv using gcc...

add_subdirectory(src)
#target_include_directories(main
#                          )
#Note: ublas is strictly part of base boost (header-only)
find_package(Boost 1.82.0 REQUIRED)

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
                        Boost::boost 
                     )

