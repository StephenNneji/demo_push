//
// Non-Degree Granting Education License -- for use at non-degree
// granting, nonprofit, education, and research organizations only. Not
// for commercial or industrial use.
//
// optimalEllipsoids.h
//
// Code generation for function 'optimalEllipsoids'
//
#ifndef OPTIMALELLIPSOIDS_H
#define OPTIMALELLIPSOIDS_H

// Include files
#include "rtwtypes.h"
#include "coder_array.h"
#include <cstddef>
#include <cstdlib>

// Function Declarations
namespace RAT
{
  void optimalEllipsoids(const ::coder::array<real_T, 2U> &u, real_T VS, ::coder::
    array<real_T, 2U> &Bs, ::coder::array<real_T, 2U> &mus, ::coder::array<
    real_T, 2U> &VEs, ::coder::array<real_T, 2U> &ns);
}

#endif

// End of code generation (optimalEllipsoids.h)
