#ifndef _H_GEMM_H_
#define _H_GEMM_H_

#define N 512
#define M N
#define K N

void gemm(int a_in[M][N], int b_in[N][K], int output[M][K]);

#endif // _H_FIR_H_
