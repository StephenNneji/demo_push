//
// Non-Degree Granting Education License -- for use at non-degree
// granting, nonprofit, education, and research organizations only. Not
// for commercial or industrial use.
//
// minOrMax.h
//
// Code generation for function 'minOrMax'
//
#ifndef MINORMAX_H
#define MINORMAX_H

// Include files
#include "rtwtypes.h"
#include "coder_array.h"
#include <cstddef>
#include <cstdlib>

// Function Declarations
namespace RAT
{
  void c_binary_expand_op(::coder::array<real_T, 2U> &in1, const ::coder::array<
    real_T, 2U> &in2, const ::coder::array<real_T, 2U> &in3);
  namespace coder
  {
    namespace internal
    {
      real_T b_maximum(const real_T x[3]);
      void maximum(const ::coder::array<real_T, 2U> &x, ::coder::array<real_T,
                   2U> &ex);
      real_T maximum(const ::coder::array<real_T, 1U> &x);
      real_T maximum(const ::coder::array<real_T, 2U> &x);
      void maximum(const ::coder::array<real_T, 2U> &x, real_T ex[2]);
      real_T maximum(const real_T x[2]);
      void maximum2(const ::coder::array<real_T, 1U> &x, const ::coder::array<
                    real_T, 1U> &y, ::coder::array<real_T, 1U> &ex);
      void minimum(const ::coder::array<real_T, 1U> &x, real_T *ex, int32_T *idx);
      real_T minimum(const real_T x[2]);
      void minimum(const real_T x[50], real_T *ex, int32_T *idx);
      void minimum(const ::coder::array<real_T, 2U> &x, real_T ex[2]);
    }
  }
}

#endif

// End of code generation (minOrMax.h)
