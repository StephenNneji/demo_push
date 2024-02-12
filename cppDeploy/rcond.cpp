//
// Non-Degree Granting Education License -- for use at non-degree
// granting, nonprofit, education, and research organizations only. Not
// for commercial or industrial use.
//
// rcond.cpp
//
// Code generation for function 'rcond'
//

// Include files
#include "rcond.h"
#include "norm.h"
#include "rt_nonfinite.h"
#include "vAllOrAny.h"
#include "xgetrf.h"
#include "xtrsv.h"
#include "coder_array.h"
#include <cmath>

// Function Definitions
namespace RAT
{
  namespace coder
  {
    real_T rcond(const ::coder::array<real_T, 2U> &A)
    {
      ::coder::array<real_T, 2U> b_A;
      ::coder::array<real_T, 1U> x;
      real_T result;
      int32_T n;
      n = A.size(0);
      result = 0.0;
      if (n == 0) {
        result = rtInf;
      } else if (n == 1) {
        real_T temp;
        temp = std::abs(A[0]);
        if (!std::isinf(temp)) {
          if (std::isnan(temp)) {
            result = rtNaN;
          } else if (temp != 0.0) {
            result = 1.0;
          }
        }
      } else {
        real_T normA;
        normA = b_norm(A);
        if (!(normA == 0.0)) {
          int32_T i;
          int32_T jlast;
          int32_T jump;
          int32_T kase;
          b_A.set_size(A.size(0), A.size(1));
          kase = A.size(1);
          for (i = 0; i < kase; i++) {
            jump = A.size(0);
            for (jlast = 0; jlast < jump; jlast++) {
              b_A[jlast + b_A.size(0) * i] = A[jlast + A.size(0) * i];
            }
          }

          internal::lapack::xgetrf(n, n, b_A, n);
          kase = n;
          int32_T exitg1;
          do {
            exitg1 = 0;
            if (kase > 0) {
              if (b_A[(kase + b_A.size(0) * (kase - 1)) - 1] == 0.0) {
                exitg1 = 1;
              } else {
                kase--;
              }
            } else {
              real_T ainvnm;
              int32_T iter;
              int32_T j;
              ainvnm = 0.0;
              iter = 2;
              kase = 1;
              jump = 1;
              j = 0;
              x.set_size(n);
              for (i = 0; i < n; i++) {
                x[i] = 1.0 / static_cast<real_T>(n);
              }

              while (kase != 0) {
                if (kase == 1) {
                  internal::blas::xtrsv(n, b_A, n, x);
                  internal::blas::b_xtrsv(n, b_A, n, x);
                } else {
                  internal::blas::c_xtrsv(n, b_A, n, x);
                  internal::blas::d_xtrsv(n, b_A, n, x);
                }

                if (jump == 1) {
                  ainvnm = b_norm(x);
                  if ((!std::isinf(ainvnm)) && (!std::isnan(ainvnm))) {
                    i = x.size(0);
                    for (kase = 0; kase < i; kase++) {
                      real_T temp;
                      temp = std::abs(x[kase]);
                      if (temp > 2.2250738585072014E-308) {
                        x[kase] = x[kase] / temp;
                      } else {
                        x[kase] = 1.0;
                      }
                    }

                    kase = 2;
                    jump = 2;
                  } else {
                    kase = 0;
                  }
                } else if (jump == 2) {
                  real_T temp;
                  j = 0;
                  temp = std::abs(x[0]);
                  i = x.size(0);
                  for (kase = 0; kase <= i - 2; kase++) {
                    real_T absrexk;
                    absrexk = std::abs(x[kase + 1]);
                    if (!(absrexk <= temp)) {
                      j = kase + 1;
                      temp = absrexk;
                    }
                  }

                  iter = 2;
                  kase = x.size(0);
                  x.set_size(kase);
                  for (i = 0; i < kase; i++) {
                    x[i] = 0.0;
                  }

                  x[j] = 1.0;
                  kase = 1;
                  jump = 3;
                } else if (jump == 3) {
                  ainvnm = b_norm(x);
                  if (ainvnm <= x[0]) {
                    real_T temp;
                    temp = 1.0;
                    i = x.size(0);
                    for (kase = 0; kase < i; kase++) {
                      x[kase] = temp * (((static_cast<real_T>(kase) + 1.0) - 1.0)
                                        / (static_cast<real_T>(x.size(0)) - 1.0)
                                        + 1.0);
                      temp = -temp;
                    }

                    kase = 1;
                    jump = 5;
                  } else {
                    i = x.size(0);
                    for (kase = 0; kase < i; kase++) {
                      real_T temp;
                      temp = std::abs(x[kase]);
                      if (temp > 2.2250738585072014E-308) {
                        x[kase] = x[kase] / temp;
                      } else {
                        x[kase] = 1.0;
                      }
                    }

                    kase = 2;
                    jump = 4;
                  }
                } else if (jump == 4) {
                  real_T temp;
                  jlast = j;
                  j = 0;
                  temp = std::abs(x[0]);
                  i = x.size(0);
                  for (kase = 0; kase <= i - 2; kase++) {
                    real_T absrexk;
                    absrexk = std::abs(x[kase + 1]);
                    if (!(absrexk <= temp)) {
                      j = kase + 1;
                      temp = absrexk;
                    }
                  }

                  if ((std::abs(x[jlast]) != std::abs(x[j])) && (iter <= 5)) {
                    iter++;
                    kase = x.size(0);
                    x.set_size(kase);
                    for (i = 0; i < kase; i++) {
                      x[i] = 0.0;
                    }

                    x[j] = 1.0;
                    kase = 1;
                    jump = 3;
                  } else {
                    temp = 1.0;
                    i = x.size(0);
                    for (kase = 0; kase < i; kase++) {
                      x[kase] = temp * (((static_cast<real_T>(kase) + 1.0) - 1.0)
                                        / (static_cast<real_T>(x.size(0)) - 1.0)
                                        + 1.0);
                      temp = -temp;
                    }

                    kase = 1;
                    jump = 5;
                  }
                } else if (jump == 5) {
                  real_T temp;
                  temp = 2.0 * b_norm(x) / 3.0 / static_cast<real_T>(n);
                  if (temp > ainvnm) {
                    ainvnm = temp;
                  }

                  kase = 0;
                }
              }

              if (ainvnm != 0.0) {
                result = 1.0 / ainvnm / normA;
              }

              if (std::isnan(result) && (!internal::vAllOrAny(b_A))) {
                result = 0.0;
              }

              exitg1 = 1;
            }
          } while (exitg1 == 0);
        }
      }

      return result;
    }
  }
}

// End of code generation (rcond.cpp)
