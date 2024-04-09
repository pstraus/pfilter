project(UnitTestNVCC LANGUAGES CUDA)

# Get GTest enabled
enable_testing()
include(GoogleTest)

find_package(Eigen3 CONFIG REQUIRED)

# Declare executable
add_executable(unitTestsNVCC)
set_target_properties(unitTestsNVCC PROPERTIES CUDA_ARCHITECTURES native)


target_include_directories(unitTestsNVCC
                          PUBLIC "${CMAKE_SOURCE_DIR}/kernels")

target_sources(unitTestsNVCC
                PUBLIC
                "TestParticle.cu" 
                )

target_link_libraries(unitTestsNVCC
                      PUBLIC Eigen3::Eigen
                      PRIVATE kernels
                      PRIVATE gtest gtest_main pthread)

gtest_discover_tests(unitTestsNVCC)