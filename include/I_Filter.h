#pragma once

#include <boost/numeric/ublas/vector.hpp>
#include <boost/numeric/ublas/matrix.hpp>

class I_Filter
{
  virtual boost::numeric::ublas::vector<double> getStateEstimate() const = 0;
};