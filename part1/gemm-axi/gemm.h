#ifndef _H_GEMM_H_
#define _H_GEMM_H_

#define N 512
#define M N
#define K N

void gemm(volatile int *a_in, volatile int *b_in, volatile int *output);

#endif  // _H_FIR_H_
