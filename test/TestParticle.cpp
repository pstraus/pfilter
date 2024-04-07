#include <Particle.cuh>
#include <googletest/include/gtest/gtest.h>

TEST(TestParticle, turn_on)
{
  Particle<3> p;
  Eigen::Matrix<float, 3, 1> state;
  state << 1, 2, 3;
  // p.setState(state);
  // Eigen::Matrix<float, 3, 1> state2 = p.getState();
  // ASSERT_EQ(state, state2);
}