#ifndef PFILTER_PARTICLE
#define PFILTER_PARTICLE

#include <cuda.h>
#include <cuda_runtime.h>
#include <eigen3/Eigen/Core>

__global__ template <int N>
class Particle
{
public:
  Eigen::Matrix<float, N, 1> getState();
  Eigen::Matrix<float, N, N> getCovariance();

  __host__ __device__ int getDims();
  __host__ __device__ int getState();

private:
  Eigen::Matrix<float, N, 1> m_state;
  Eigen::Matrix<float, N, N> m_cov;
  static const int m_dims = N;
};

#endif