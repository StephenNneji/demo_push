//
// Non-Degree Granting Education License -- for use at non-degree
// granting, nonprofit, education, and research organizations only. Not
// for commercial or industrial use.
//
// calculate5.cpp
//
// Code generation for function 'calculate5'
//

// Include files
#include "calculate5.h"
#include "RATMain_internal_types.h"
#include "RATMain_types.h"
#include "parallelContrasts5.h"
#include "parallelPoints5.h"
#include "rt_nonfinite.h"
#include "single5.h"
#include "strcmp.h"
#include "sum.h"
#include "coder_array.h"
#include "coder_bounded_array.h"

// Function Definitions
namespace RAT
{
  namespace domainsTF
  {
    namespace customXY
    {
      void calculate(const c_struct_T *problemStruct, const cell_11
                     *problemCells, const struct2_T *controls, d_struct_T
                     *contrastParams, ::coder::array<cell_wrap_20, 1U>
                     &reflectivity, ::coder::array<cell_wrap_20, 1U> &simulation,
                     ::coder::array<cell_wrap_8, 1U> &shiftedData, ::coder::
                     array<cell_wrap_8, 2U> &layerSlds, ::coder::array<
                     cell_wrap_8, 2U> &domainSldProfiles, ::coder::array<
                     cell_wrap_8, 2U> &allLayers)
      {
        ::coder::array<cell_wrap_8, 2U> b_allLayers;
        int32_T loop_ub_tmp;

        //  Custom layers reflectivity calculation for domainsTF
        //  This function decides on parallelisation options before calling the
        //  relevant version of the main custom layers calculation. It is more
        //  efficient to have multiple versions of the core calculation, each dealing
        //  with a different scheme for parallelisation. These are:
        //  single    - single threaded reflectivity calculation
        //  points    - parallelise over points in the reflectivity calculation
        //  contrasts - parallelise over contrasts.
        //  Pre-allocation - It's necessary to
        //  pre-allocate the memory for all the arrays
        //  for compilation, so do this in this block.
        loop_ub_tmp = static_cast<int32_T>(problemStruct->numberOfContrasts);
        contrastParams->ssubs.set_size(loop_ub_tmp);
        contrastParams->backgroundParams.set_size(loop_ub_tmp);
        contrastParams->qzshifts.set_size(loop_ub_tmp);
        contrastParams->scalefactors.set_size(loop_ub_tmp);
        contrastParams->bulkIn.set_size(loop_ub_tmp);
        contrastParams->bulkOut.set_size(loop_ub_tmp);
        contrastParams->calculations.allChis.set_size(loop_ub_tmp);
        contrastParams->resolutionParams.set_size(loop_ub_tmp);
        contrastParams->allSubRough.set_size(loop_ub_tmp);
        reflectivity.set_size(loop_ub_tmp);
        simulation.set_size(loop_ub_tmp);
        shiftedData.set_size(loop_ub_tmp);
        layerSlds.set_size(loop_ub_tmp, 2);
        domainSldProfiles.set_size(loop_ub_tmp, 2);
        allLayers.set_size(loop_ub_tmp, 2);
        for (int32_T i{0}; i < loop_ub_tmp; i++) {
          contrastParams->ssubs[i] = 0.0;
          contrastParams->backgroundParams[i] = 0.0;
          contrastParams->qzshifts[i] = 0.0;
          contrastParams->scalefactors[i] = 0.0;
          contrastParams->bulkIn[i] = 0.0;
          contrastParams->bulkOut[i] = 0.0;
          contrastParams->calculations.allChis[i] = 0.0;
          contrastParams->resolutionParams[i] = 0.0;
          contrastParams->allSubRough[i] = 0.0;
          reflectivity[i].f1.set_size(2, 2);
          reflectivity[i].f1[0] = 1.0;
          reflectivity[i].f1[1] = 1.0;
          reflectivity[i].f1[reflectivity[i].f1.size(0)] = 1.0;
          reflectivity[i].f1[reflectivity[i].f1.size(0) + 1] = 1.0;
          simulation[i].f1.set_size(2, 2);
          simulation[i].f1[0] = 1.0;
          simulation[i].f1[1] = 1.0;
          simulation[i].f1[simulation[i].f1.size(0)] = 1.0;
          simulation[i].f1[simulation[i].f1.size(0) + 1] = 1.0;
          shiftedData[i].f1.set_size(2, 3);
          layerSlds[i].f1.set_size(2, 3);
          layerSlds[i + layerSlds.size(0)].f1.set_size(2, 3);
          domainSldProfiles[i].f1.set_size(2, 2);
          domainSldProfiles[i + domainSldProfiles.size(0)].f1.set_size(2, 2);
          domainSldProfiles[i].f1[0] = 1.0;
          domainSldProfiles[i + domainSldProfiles.size(0)].f1[0] = 1.0;
          domainSldProfiles[i].f1[1] = 1.0;
          domainSldProfiles[i + domainSldProfiles.size(0)].f1[1] = 1.0;
          domainSldProfiles[i].f1[domainSldProfiles[i].f1.size(0)] = 1.0;
          domainSldProfiles[i + domainSldProfiles.size(0)]
            .f1[domainSldProfiles[i + domainSldProfiles.size(0)].f1.size(0)] =
            1.0;
          domainSldProfiles[i].f1[domainSldProfiles[i].f1.size(0) + 1] = 1.0;
          domainSldProfiles[i + domainSldProfiles.size(0)]
            .f1[domainSldProfiles[i + domainSldProfiles.size(0)].f1.size(0) + 1]
            = 1.0;
          allLayers[i].f1.set_size(2, 3);
          allLayers[i + allLayers.size(0)].f1.set_size(2, 3);
          for (int32_T b_i{0}; b_i < 3; b_i++) {
            shiftedData[i].f1[shiftedData[i].f1.size(0) * b_i] = 1.0;
            shiftedData[i].f1[shiftedData[i].f1.size(0) * b_i + 1] = 1.0;
            layerSlds[i].f1[layerSlds[i].f1.size(0) * b_i] = 1.0;
            layerSlds[i + layerSlds.size(0)].f1[layerSlds[i + layerSlds.size(0)]
              .f1.size(0) * b_i] = 1.0;
            layerSlds[i].f1[layerSlds[i].f1.size(0) * b_i + 1] = 1.0;
            layerSlds[i + layerSlds.size(0)].f1[layerSlds[i + layerSlds.size(0)]
              .f1.size(0) * b_i + 1] = 1.0;
            allLayers[i].f1[allLayers[i].f1.size(0) * b_i] = 1.0;
            allLayers[i + allLayers.size(0)].f1[allLayers[i + allLayers.size(0)]
              .f1.size(0) * b_i] = 1.0;
            allLayers[i].f1[allLayers[i].f1.size(0) * b_i + 1] = 1.0;
            allLayers[i + allLayers.size(0)].f1[allLayers[i + allLayers.size(0)]
              .f1.size(0) * b_i + 1] = 1.0;
          }
        }

        //  End pre-allocation
        if (coder::internal::n_strcmp(controls->parallel.data,
             controls->parallel.size)) {
          loop_ub_tmp = 0;
        } else if (coder::internal::o_strcmp(controls->parallel.data,
                    controls->parallel.size)) {
          loop_ub_tmp = 1;
        } else if (coder::internal::p_strcmp(controls->parallel.data,
                    controls->parallel.size)) {
          loop_ub_tmp = 2;
        } else {
          loop_ub_tmp = -1;
        }

        switch (loop_ub_tmp) {
         case 0:
          b_single(problemStruct, problemCells, controls, contrastParams->ssubs,
                   contrastParams->backgroundParams, contrastParams->qzshifts,
                   contrastParams->scalefactors, contrastParams->bulkIn,
                   contrastParams->bulkOut, contrastParams->resolutionParams,
                   contrastParams->calculations.allChis, reflectivity,
                   simulation, shiftedData, layerSlds, domainSldProfiles,
                   b_allLayers, contrastParams->allSubRough);
          allLayers.set_size(b_allLayers.size(0), 2);
          loop_ub_tmp = b_allLayers.size(0);
          for (int32_T b_i{0}; b_i < 2; b_i++) {
            for (int32_T i1{0}; i1 < loop_ub_tmp; i1++) {
              allLayers[i1 + allLayers.size(0) * b_i] = b_allLayers[i1 +
                b_allLayers.size(0) * b_i];
            }
          }
          break;

         case 1:
          parallelPoints(problemStruct, problemCells, controls,
                         contrastParams->ssubs, contrastParams->backgroundParams,
                         contrastParams->qzshifts, contrastParams->scalefactors,
                         contrastParams->bulkIn, contrastParams->bulkOut,
                         contrastParams->resolutionParams,
                         contrastParams->calculations.allChis, reflectivity,
                         simulation, shiftedData, layerSlds, domainSldProfiles,
                         b_allLayers, contrastParams->allSubRough);
          allLayers.set_size(b_allLayers.size(0), 2);
          loop_ub_tmp = b_allLayers.size(0);
          for (int32_T b_i{0}; b_i < 2; b_i++) {
            for (int32_T i1{0}; i1 < loop_ub_tmp; i1++) {
              allLayers[i1 + allLayers.size(0) * b_i] = b_allLayers[i1 +
                b_allLayers.size(0) * b_i];
            }
          }
          break;

         case 2:
          c_parallelContrasts(problemStruct, problemCells, controls,
                              contrastParams->ssubs,
                              contrastParams->backgroundParams,
                              contrastParams->qzshifts,
                              contrastParams->scalefactors,
                              contrastParams->bulkIn, contrastParams->bulkOut,
                              contrastParams->resolutionParams,
                              contrastParams->calculations.allChis, reflectivity,
                              simulation, shiftedData, layerSlds,
                              domainSldProfiles, b_allLayers,
                              contrastParams->allSubRough);
          allLayers.set_size(b_allLayers.size(0), 2);
          loop_ub_tmp = b_allLayers.size(0);
          for (int32_T b_i{0}; b_i < 2; b_i++) {
            for (int32_T i1{0}; i1 < loop_ub_tmp; i1++) {
              allLayers[i1 + allLayers.size(0) * b_i] = b_allLayers[i1 +
                b_allLayers.size(0) * b_i];
            }
          }
          break;
        }

        contrastParams->calculations.sumChi = coder::sum
          (contrastParams->calculations.allChis);
        contrastParams->resample.set_size(1, problemStruct->resample.size(1));
        loop_ub_tmp = problemStruct->resample.size(1);
        for (int32_T b_i{0}; b_i < loop_ub_tmp; b_i++) {
          contrastParams->resample[b_i] = problemStruct->resample[b_i];
        }
      }
    }
  }
}

// End of code generation (calculate5.cpp)
