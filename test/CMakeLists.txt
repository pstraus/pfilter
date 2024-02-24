project(UnitTest)

# Get GTest enabled
enable_testing()
include(GoogleTest)

# Declare executable
add_executable(unitTests)

target_include_directories(unitTests
                          PUBLIC "${CMAKE_SOURCE_DIR}/include/")

target_sources(unitTests
              PUBLIC
                "${CMAKE_SOURCE_DIR}/include/Particle.cu"
                "${CMAKE_SOURCE_DIR/include/Filter.cu}"
                "TestParticle.cpp"
                )

target_link_libraries(unitTests
                      PUBLIC ${Eigen3}
                      PRIVATE gtest gtest_main pthread)

gtest_discover_tests(unitTests)