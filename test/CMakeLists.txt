project(UnitTest)

# Get GTest enabled
enable_testing()
include(GoogleTest)

find_package(Eigen3 CONFIG REQUIRED)
find_package(CUDA)

# Declare executable
add_executable(unitTests)


target_include_directories(unitTests
                          PUBLIC "${CMAKE_SOURCE_DIR}/kernels")

target_sources(unitTests
                PUBLIC
                "TestParticle.cpp" 
                )

target_link_libraries(unitTests
                      PUBLIC Eigen3::Eigen
                      PRIVATE kernels
                      PRIVATE gtest gtest_main pthread)

gtest_discover_tests(unitTests)