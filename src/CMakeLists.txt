project(pfilter)

find_package(Eigen3 CONFIG REQUIRED)

add_executable(pfilter)

target_include_directories(pfilter
                          PUBLIC "${CMAKE_SOURCE_DIR}/include")

target_link_libraries(pfilter 
                      PRIVATE Eigen3::Eigen)

target_sources(pfilter PUBLIC main.cpp)