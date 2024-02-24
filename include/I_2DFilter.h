#pragma once

#include <Eigen/Core>

// This can be generalized in the future to multiple state types as input.  Simplified to get _something_ up and running
/// \brief a filter maintaining a 4D state (az/el/az_rate/el_rate) based on 1-dimensional conic input
class I_2DFilter
{
  virtual Eigen::Matrix<double, 4, 1> getStateEstimate() const = 0;
  virtual Eigen::Matrix<double, 4, 4> getCovarianceEstimate() const = 0;

  virtual void updateConic(const Eigen::Matrix<double, 1, 1> &data) = 0;
};