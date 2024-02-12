//
// Non-Degree Granting Education License -- for use at non-degree
// granting, nonprofit, education, and research organizations only. Not
// for commercial or industrial use.
//
// xgeru.h
//
// Code generation for function 'xgeru'
//
#ifndef XGERU_H
#define XGERU_H

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
        void xgeru(int32_T m, int32_T n, int32_T ix0, int32_T iy0, int32_T incy,
                   ::coder::array<real_T, 2U> &A, int32_T ia0, int32_T lda);
      }
    }
  }
}

#endif

// End of code generation (xgeru.h)
