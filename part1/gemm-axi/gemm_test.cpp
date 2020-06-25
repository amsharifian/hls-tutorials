#include <stdio.h>
#include <stdlib.h>
#include <cstdlib>
#include <ctime>

#include "gemm.h"

// Software implementation for checking correctness
void gemm_sw(int a_in[M][N], int b_in[N][K], int output[M][K]) {
    for (int i = 0; i < M; i++) {
        for (int j = 0; j < K; j++) {
            output[i][j] = 0;
            for (int k = 0; k < N; k++) {
                output[i][j] += a_in[i][k] * b_in[k][j];
            }
        }
    }
}

int main(void) {
    int input_a[M][N];
    int input_b[N][K];
    int output_hw[M][K];
    int output_sw[M][K];

    std::srand(std::time(nullptr));
    // Initialize input with synthetic results
    for (int i = 0; i < M; i++) {
        for (int j = 0; j < N; j++) {
            input_a[i][j] = 1 + std::rand() / ((RAND_MAX + 1u) / 6);
        }
    }

    for (int i = 0; i < N; i++) {
        for (int j = 0; j < K; j++) {
            input_b[i][j] = 1 + std::rand() / ((RAND_MAX + 1u) / 6);
        }
    }

    for (int i = 0; i < M; i++) {
        for (int j = 0; j < K; j++) {
            output_hw[i][j] = 0;
            output_sw[i][j] = 0;
        }
    }

    //// Get output results from software run
    gemm_sw(input_a, input_b, output_sw);

    //// Get output results from hardware run
    gemm(&input_a[0][0], &input_b[0][0], &output_hw[0][0]);

    //// Check results
    for (int i = 0; i < M; i++) {
        for (int j = 0; j < K; j++) {
            if (output_sw[i][j] != output_hw[i][j]) {
                printf(
                    "TEST FAILED, results not matching, output_sw[%d] = %d, "
                    "output_hw[%d] = %d.\n",
                    i, output_sw[i], i, output_hw[i]);
                return -1;
            }
        }
    }

    printf("TEST PASSED!\n");
    return 0;
}
