project(kernels LANGUAGES CUDA)

find_package(Eigen3 CONFIG REQUIRED)

add_library(kernels 
            STATIC
              Particle.cuh Particle.cu)


target_compile_features(kernels PUBLIC cuda_std_20)

set_target_properties(kernels 
                        PROPERTIES 
                          CUDA_RUNTIME_LIBRARY SHARED 
                          CUDA_SEPARABLE_COMPILATION ON)

target_link_libraries(kernels
                      PUBLIC
                        cuda
                        Eigen3::Eigen)
