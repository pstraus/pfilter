
#pragma once
#include <pfilter/include/I_Filter.h>

class Filter : public I_Filter
{
  virtual boost::numeric::ublas::vector<double> getStateEstimate() const = 0;
};