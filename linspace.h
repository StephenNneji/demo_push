//
// Non-Degree Granting Education License -- for use at non-degree
// granting, nonprofit, education, and research organizations only. Not
// for commercial or industrial use.
//
// linspace.h
//
// Code generation for function 'linspace'
//
#ifndef LINSPACE_H
#define LINSPACE_H

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
    void linspace(real_T d1, real_T d2, real_T n, ::coder::array<real_T, 2U> &y);
    void linspace(real_T d1, real_T d2, real_T y[500]);
  }
}

#endif

// End of code generation (linspace.h)
