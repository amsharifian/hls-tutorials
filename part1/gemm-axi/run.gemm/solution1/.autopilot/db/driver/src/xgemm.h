// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XGEMM_H
#define XGEMM_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xgemm_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Control_bus_BaseAddress;
} XGemm_Config;
#endif

typedef struct {
    u32 Control_bus_BaseAddress;
    u32 IsReady;
} XGemm;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XGemm_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XGemm_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XGemm_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XGemm_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XGemm_Initialize(XGemm *InstancePtr, u16 DeviceId);
XGemm_Config* XGemm_LookupConfig(u16 DeviceId);
int XGemm_CfgInitialize(XGemm *InstancePtr, XGemm_Config *ConfigPtr);
#else
int XGemm_Initialize(XGemm *InstancePtr, const char* InstanceName);
int XGemm_Release(XGemm *InstancePtr);
#endif

void XGemm_Start(XGemm *InstancePtr);
u32 XGemm_IsDone(XGemm *InstancePtr);
u32 XGemm_IsIdle(XGemm *InstancePtr);
u32 XGemm_IsReady(XGemm *InstancePtr);
void XGemm_EnableAutoRestart(XGemm *InstancePtr);
void XGemm_DisableAutoRestart(XGemm *InstancePtr);

void XGemm_Set_a_in(XGemm *InstancePtr, u32 Data);
u32 XGemm_Get_a_in(XGemm *InstancePtr);
void XGemm_Set_b_in(XGemm *InstancePtr, u32 Data);
u32 XGemm_Get_b_in(XGemm *InstancePtr);
void XGemm_Set_output_r(XGemm *InstancePtr, u32 Data);
u32 XGemm_Get_output_r(XGemm *InstancePtr);

void XGemm_InterruptGlobalEnable(XGemm *InstancePtr);
void XGemm_InterruptGlobalDisable(XGemm *InstancePtr);
void XGemm_InterruptEnable(XGemm *InstancePtr, u32 Mask);
void XGemm_InterruptDisable(XGemm *InstancePtr, u32 Mask);
void XGemm_InterruptClear(XGemm *InstancePtr, u32 Mask);
u32 XGemm_InterruptGetEnabled(XGemm *InstancePtr);
u32 XGemm_InterruptGetStatus(XGemm *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
