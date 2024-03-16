#ifndef PFILTER_PARTICLE
#define PFILTER_PARTICLE

#include <cuda.h>
#include <cuda_runtime.h>
#include <Eigen/Core>

template <int N>
class Particle
{
public:
  __host__ __device__ Eigen::Matrix<float, N, 1> getState();
  __host__ __device__ Eigen::Matrix<float, N, N> getCovariance();

  __host__ __device__ int getDims();

private:
  Eigen::Matrix<float, N, 1> m_state;
  Eigen::Matrix<float, N, N> m_cov;
  static const int m_dims = N;
};

#endif