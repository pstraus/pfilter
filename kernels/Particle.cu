#include "Particle.cuh"

template <int N>
__host__ __device__ Eigen::Matrix<float, N, 1> Particle<N>::getState()
{
  return m_state;
}

template <int N>
__host__ __device__ Eigen::Matrix<float, N, N> Particle<N>::getCovariance()
{
  return m_cov;
}

template <int N>
__host__ __device__ int Particle<N>::getDims()
{
  return m_dims;
}