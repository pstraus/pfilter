
#pragma once

#include <pfilter/include/I_Filter.h>
#include "Particle.cu"

__global__ class ConicParticleFilter : public I_2DFilter
{
public:
  __host__ __device__ ConicParticleFilter(uint numParticles);
  __host__ __device__ ~ConicParticleFilter() override = default;
  __host__ Eigen::Matrix<double, 4, 1> getStateEstimate() const override;
  __host__ Eigen::Matrix<double, 4, 4> getCovarianceEstimate() const override;

  __host__ void updateFilter(const Eigen::Matrix<float, 1, 1> &data) override;

private:
  uint mNumParticles;
  Particle[] mp_particleArray;
};

void updateFilter(int n, double *track, double *data)
{
}
