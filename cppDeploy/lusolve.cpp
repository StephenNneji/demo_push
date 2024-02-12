//
// Non-Degree Granting Education License -- for use at non-degree
// granting, nonprofit, education, and research organizations only. Not
// for commercial or industrial use.
//
// lusolve.cpp
//
// Code generation for function 'lusolve'
//

// Include files
#include "lusolve.h"
#include "rt_nonfinite.h"
#include "xgetrf.h"
#include "xtrsm.h"
#include "coder_array.h"

// Function Definitions
namespace RAT
{
  namespace coder
  {
    namespace internal
    {
      void lusolve(const ::coder::array<real_T, 2U> &A, const ::coder::array<
                   real_T, 2U> &B, ::coder::array<real_T, 2U> &X)
      {
        ::coder::array<real_T, 2U> b_A;
        ::coder::array<int32_T, 2U> ipiv;
        int32_T b_i;
        int32_T i;
        int32_T i1;
        int32_T info;
        int32_T nb;
        b_A.set_size(A.size(0), A.size(1));
        info = A.size(1);
        for (i = 0; i < info; i++) {
          b_i = A.size(0);
          for (i1 = 0; i1 < b_i; i1++) {
            b_A[i1 + b_A.size(0) * i] = A[i1 + A.size(0) * i];
          }
        }

        lapack::xgetrf(A.size(1), A.size(1), b_A, A.size(1), ipiv, &info);
        nb = B.size(0);
        X.set_size(B.size(0), B.size(1));
        info = B.size(1);
        for (i = 0; i < info; i++) {
          b_i = B.size(0);
          for (i1 = 0; i1 < b_i; i1++) {
            X[X.size(0) * i] = B[B.size(0) * i];
          }
        }

        blas::xtrsm(B.size(0), A.size(1), b_A, A.size(1), X, B.size(0));
        blas::b_xtrsm(B.size(0), A.size(1), b_A, A.size(1), X, B.size(0));
        i = A.size(1) - 1;
        for (info = i; info >= 1; info--) {
          i1 = ipiv[info - 1];
          if (i1 != info) {
            for (b_i = 0; b_i < nb; b_i++) {
              real_T temp;
              temp = X[X.size(0) * (info - 1)];
              X[X.size(0) * (info - 1)] = X[X.size(0) * (i1 - 1)];
              X[X.size(0) * (i1 - 1)] = temp;
            }
          }
        }
      }
    }
  }
}

// End of code generation (lusolve.cpp)
