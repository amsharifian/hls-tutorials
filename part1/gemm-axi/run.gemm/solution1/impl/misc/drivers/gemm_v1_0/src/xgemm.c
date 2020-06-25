// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xgemm.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XGemm_CfgInitialize(XGemm *InstancePtr, XGemm_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_bus_BaseAddress = ConfigPtr->Control_bus_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XGemm_Start(XGemm *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGemm_ReadReg(InstancePtr->Control_bus_BaseAddress, XGEMM_CONTROL_BUS_ADDR_AP_CTRL) & 0x80;
    XGemm_WriteReg(InstancePtr->Control_bus_BaseAddress, XGEMM_CONTROL_BUS_ADDR_AP_CTRL, Data | 0x01);
}

u32 XGemm_IsDone(XGemm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGemm_ReadReg(InstancePtr->Control_bus_BaseAddress, XGEMM_CONTROL_BUS_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XGemm_IsIdle(XGemm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGemm_ReadReg(InstancePtr->Control_bus_BaseAddress, XGEMM_CONTROL_BUS_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XGemm_IsReady(XGemm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGemm_ReadReg(InstancePtr->Control_bus_BaseAddress, XGEMM_CONTROL_BUS_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XGemm_EnableAutoRestart(XGemm *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGemm_WriteReg(InstancePtr->Control_bus_BaseAddress, XGEMM_CONTROL_BUS_ADDR_AP_CTRL, 0x80);
}

void XGemm_DisableAutoRestart(XGemm *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGemm_WriteReg(InstancePtr->Control_bus_BaseAddress, XGEMM_CONTROL_BUS_ADDR_AP_CTRL, 0);
}

void XGemm_Set_a_in(XGemm *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGemm_WriteReg(InstancePtr->Control_bus_BaseAddress, XGEMM_CONTROL_BUS_ADDR_A_IN_DATA, Data);
}

u32 XGemm_Get_a_in(XGemm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGemm_ReadReg(InstancePtr->Control_bus_BaseAddress, XGEMM_CONTROL_BUS_ADDR_A_IN_DATA);
    return Data;
}

void XGemm_Set_b_in(XGemm *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGemm_WriteReg(InstancePtr->Control_bus_BaseAddress, XGEMM_CONTROL_BUS_ADDR_B_IN_DATA, Data);
}

u32 XGemm_Get_b_in(XGemm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGemm_ReadReg(InstancePtr->Control_bus_BaseAddress, XGEMM_CONTROL_BUS_ADDR_B_IN_DATA);
    return Data;
}

void XGemm_Set_output_r(XGemm *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGemm_WriteReg(InstancePtr->Control_bus_BaseAddress, XGEMM_CONTROL_BUS_ADDR_OUTPUT_R_DATA, Data);
}

u32 XGemm_Get_output_r(XGemm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGemm_ReadReg(InstancePtr->Control_bus_BaseAddress, XGEMM_CONTROL_BUS_ADDR_OUTPUT_R_DATA);
    return Data;
}

void XGemm_InterruptGlobalEnable(XGemm *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGemm_WriteReg(InstancePtr->Control_bus_BaseAddress, XGEMM_CONTROL_BUS_ADDR_GIE, 1);
}

void XGemm_InterruptGlobalDisable(XGemm *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGemm_WriteReg(InstancePtr->Control_bus_BaseAddress, XGEMM_CONTROL_BUS_ADDR_GIE, 0);
}

void XGemm_InterruptEnable(XGemm *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XGemm_ReadReg(InstancePtr->Control_bus_BaseAddress, XGEMM_CONTROL_BUS_ADDR_IER);
    XGemm_WriteReg(InstancePtr->Control_bus_BaseAddress, XGEMM_CONTROL_BUS_ADDR_IER, Register | Mask);
}

void XGemm_InterruptDisable(XGemm *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XGemm_ReadReg(InstancePtr->Control_bus_BaseAddress, XGEMM_CONTROL_BUS_ADDR_IER);
    XGemm_WriteReg(InstancePtr->Control_bus_BaseAddress, XGEMM_CONTROL_BUS_ADDR_IER, Register & (~Mask));
}

void XGemm_InterruptClear(XGemm *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGemm_WriteReg(InstancePtr->Control_bus_BaseAddress, XGEMM_CONTROL_BUS_ADDR_ISR, Mask);
}

u32 XGemm_InterruptGetEnabled(XGemm *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XGemm_ReadReg(InstancePtr->Control_bus_BaseAddress, XGEMM_CONTROL_BUS_ADDR_IER);
}

u32 XGemm_InterruptGetStatus(XGemm *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XGemm_ReadReg(InstancePtr->Control_bus_BaseAddress, XGEMM_CONTROL_BUS_ADDR_ISR);
}

