#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "gemm.h"

void gemm(volatile int *a_in, volatile int *b_in, volatile int *output) {
#pragma HLS INTERFACE m_axi port = a_in   depth=512*512 max_read_burst_length=256 max_write_burst_length=256 offset = slave bundle = DATA_BUNDLE
#pragma HLS INTERFACE m_axi port = b_in   depth=512*512 max_read_burst_length=256 max_write_burst_length=256 offset = slave bundle = DATA_BUNDLE
#pragma HLS INTERFACE m_axi port = output depth=512*512 max_read_burst_length=256 max_write_burst_length=256 offset = slave bundle = DATA_BUNDLE
#pragma HLS INTERFACE s_axilite port = return bundle = CONTROL_BUS

    int a_buff[M][N];
    int b_buff[N][K];
    int c_buff[M][K];

prefetch1:for(int i = 0; i < M; i++){
//#pragma HLS DATAFLOW
        memcpy(&a_buff[i][0], const_cast<int*>(a_in + (i * N)), sizeof(int) * N);
    }

prefetch2:for(int i = 0; i < N; i++){
//#pragma HLS DATAFLOW
        memcpy(&b_buff[i][0], const_cast<int*>(b_in + (i * K)), sizeof(int) * K);
    }

OUTER_LOOP:
    for (int i = 0; i < M; i++) {
//#pragma HLS DATAFLOW
    INNER_LOOP1:
        for (int j = 0; j < K; j++) {
            c_buff[i][j] = 0;
        INNER_LOOP2:
            for (int k = 0; k < N; k++) {
                c_buff[i][j] += a_buff[i][k] * b_buff[k][j];
            }
        }
    }


prefetch3:for(int i = 0; i < M; i++){
//#pragma HLS DATAFLOW
        memcpy(const_cast<int*>(output + (i * M)), const_cast<int*>(&c_buff[i][0]), sizeof(int) * K);
    }
}
