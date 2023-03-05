#pragma once

#define checkCUDA(expression) {                               \
    cudaError_t status = (expression);                        \
    if (status != cudaSuccess) {                              \
      std::cerr << "Error on file: " << __FILE__ << ", line " << __LINE__ << ": "       \
                << cudaGetErrorString(status) << std::endl;   \
      std::exit(EXIT_FAILURE);                                \
    }                                                         \
}

// #define checkCUDNN(expression) {                              \
//     cudnnStatus_t status = (expression);                      \
//     if (status != CUDNN_STATUS_SUCCESS) {                     \
//       std::cerr << "Error on file: " << __FILE__ << ", line " << __LINE__ << ": "       \
//                 << cudnnGetErrorString(status) << std::endl;  \
//       std::exit(EXIT_FAILURE);                                \
//     }                                                         \
// }