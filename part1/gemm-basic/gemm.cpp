#include "gemm.h"

void gemm(int a_in[M][N], int b_in[N][K], int output[M][K]) {
OUTER_LOOP:
    for (int i = 0; i < M; i++) {
    INNER_LOOP1:
        for (int j = 0; j < K; j++) {
            output[i][j] = 0;
        INNER_LOOP2:
            for (int k = 0; k < N; k++) {
                output[i][j] += a_in[i][k] * b_in[k][j];
            }
        }
    }
}
