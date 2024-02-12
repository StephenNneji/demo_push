//
// Non-Degree Granting Education License -- for use at non-degree
// granting, nonprofit, education, and research organizations only. Not
// for commercial or industrial use.
//
// xnrm2.h
//
// Code generation for function 'xnrm2'
//
#ifndef XNRM2_H
#define XNRM2_H

// Include files
#include "rtwtypes.h"
#include "coder_array.h"
#include <cstddef>
#include <cstdlib>

// Function Declarations
namespace RAT
{
  namespace coder
  {
    namespace internal
    {
      namespace blas
      {
        real_T b_xnrm2(int32_T n, const ::coder::array<real_T, 1U> &x);
        real_T xnrm2(int32_T n, const ::coder::array<real_T, 2U> &x);
        real_T xnrm2(int32_T n, const ::coder::array<creal_T, 2U> &x, int32_T
                     ix0);
        real_T xnrm2(int32_T n, const ::coder::array<real_T, 2U> &x, int32_T ix0);
        real_T xnrm2(int32_T n, const real_T x[3]);
        real_T xnrm2(int32_T n, const ::coder::array<real_T, 1U> &x);
      }
    }
  }
}

#endif

// End of code generation (xnrm2.h)
