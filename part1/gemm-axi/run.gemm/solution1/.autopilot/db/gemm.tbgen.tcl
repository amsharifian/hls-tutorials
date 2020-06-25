set moduleName gemm
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {gemm}
set C_modelType { void 0 }
set C_modelArgList {
	{ DATA_BUNDLE int 32 regular {axi_master 2}  }
	{ a_in int 32 regular {axi_slave 0}  }
	{ b_in int 32 regular {axi_slave 0}  }
	{ output_r int 32 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "DATA_BUNDLE", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "a_in","cData": "int","bit_use": { "low": 0,"up": 31},"offset": { "type": "dynamic","port_name": "a_in","bundle": "AXILiteS"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 262143,"step" : 1}]},{"cName": "b_in","cData": "int","bit_use": { "low": 0,"up": 31},"offset": { "type": "dynamic","port_name": "b_in","bundle": "AXILiteS"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 262143,"step" : 1}]},{"cName": "output","cData": "int","bit_use": { "low": 0,"up": 31},"offset": { "type": "dynamic","port_name": "output_r","bundle": "AXILiteS"},"direction": "WRITEONLY","cArray": [{"low" : 0,"up" : 262143,"step" : 1}]}]}]} , 
 	{ "Name" : "a_in", "interface" : "axi_slave", "bundle":"CONTROL_BUS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "b_in", "interface" : "axi_slave", "bundle":"CONTROL_BUS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "output_r", "interface" : "axi_slave", "bundle":"CONTROL_BUS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":32}, "offset_end" : {"in":39}} ]}
# RTL Port declarations: 
set portNum 65
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_DATA_BUNDLE_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_DATA_BUNDLE_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_DATA_BUNDLE_AWADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_DATA_BUNDLE_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_DATA_BUNDLE_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_DATA_BUNDLE_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_DATA_BUNDLE_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_DATA_BUNDLE_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_DATA_BUNDLE_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_DATA_BUNDLE_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_DATA_BUNDLE_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_DATA_BUNDLE_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_DATA_BUNDLE_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_DATA_BUNDLE_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_DATA_BUNDLE_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_DATA_BUNDLE_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_DATA_BUNDLE_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_DATA_BUNDLE_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_DATA_BUNDLE_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_DATA_BUNDLE_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_DATA_BUNDLE_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_DATA_BUNDLE_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_DATA_BUNDLE_ARADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_DATA_BUNDLE_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_DATA_BUNDLE_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_DATA_BUNDLE_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_DATA_BUNDLE_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_DATA_BUNDLE_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_DATA_BUNDLE_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_DATA_BUNDLE_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_DATA_BUNDLE_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_DATA_BUNDLE_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_DATA_BUNDLE_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_DATA_BUNDLE_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_DATA_BUNDLE_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_DATA_BUNDLE_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_DATA_BUNDLE_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_DATA_BUNDLE_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_DATA_BUNDLE_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_DATA_BUNDLE_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_DATA_BUNDLE_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_DATA_BUNDLE_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_DATA_BUNDLE_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_DATA_BUNDLE_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_DATA_BUNDLE_BUSER sc_in sc_lv 1 signal 0 } 
	{ s_axi_CONTROL_BUS_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_AWADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_CONTROL_BUS_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_CONTROL_BUS_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_CONTROL_BUS_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_ARADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_CONTROL_BUS_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_CONTROL_BUS_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_CONTROL_BUS_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_CONTROL_BUS_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "AWADDR" },"address":[{"name":"gemm","role":"start","value":"0","valid_bit":"0"},{"name":"gemm","role":"continue","value":"0","valid_bit":"4"},{"name":"gemm","role":"auto_start","value":"0","valid_bit":"7"},{"name":"a_in","role":"data","value":"16"},{"name":"b_in","role":"data","value":"24"},{"name":"output_r","role":"data","value":"32"}] },
	{ "name": "s_axi_CONTROL_BUS_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "AWVALID" } },
	{ "name": "s_axi_CONTROL_BUS_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "AWREADY" } },
	{ "name": "s_axi_CONTROL_BUS_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "WVALID" } },
	{ "name": "s_axi_CONTROL_BUS_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "WREADY" } },
	{ "name": "s_axi_CONTROL_BUS_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "WDATA" } },
	{ "name": "s_axi_CONTROL_BUS_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "WSTRB" } },
	{ "name": "s_axi_CONTROL_BUS_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "ARADDR" },"address":[{"name":"gemm","role":"start","value":"0","valid_bit":"0"},{"name":"gemm","role":"done","value":"0","valid_bit":"1"},{"name":"gemm","role":"idle","value":"0","valid_bit":"2"},{"name":"gemm","role":"ready","value":"0","valid_bit":"3"},{"name":"gemm","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_CONTROL_BUS_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "ARVALID" } },
	{ "name": "s_axi_CONTROL_BUS_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "ARREADY" } },
	{ "name": "s_axi_CONTROL_BUS_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "RVALID" } },
	{ "name": "s_axi_CONTROL_BUS_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "RREADY" } },
	{ "name": "s_axi_CONTROL_BUS_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "RDATA" } },
	{ "name": "s_axi_CONTROL_BUS_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "RRESP" } },
	{ "name": "s_axi_CONTROL_BUS_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "BVALID" } },
	{ "name": "s_axi_CONTROL_BUS_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "BREADY" } },
	{ "name": "s_axi_CONTROL_BUS_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_DATA_BUNDLE_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_BUNDLE", "role": "AWVALID" }} , 
 	{ "name": "m_axi_DATA_BUNDLE_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_BUNDLE", "role": "AWREADY" }} , 
 	{ "name": "m_axi_DATA_BUNDLE_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "DATA_BUNDLE", "role": "AWADDR" }} , 
 	{ "name": "m_axi_DATA_BUNDLE_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_BUNDLE", "role": "AWID" }} , 
 	{ "name": "m_axi_DATA_BUNDLE_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "DATA_BUNDLE", "role": "AWLEN" }} , 
 	{ "name": "m_axi_DATA_BUNDLE_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "DATA_BUNDLE", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_DATA_BUNDLE_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA_BUNDLE", "role": "AWBURST" }} , 
 	{ "name": "m_axi_DATA_BUNDLE_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA_BUNDLE", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_DATA_BUNDLE_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_BUNDLE", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_DATA_BUNDLE_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "DATA_BUNDLE", "role": "AWPROT" }} , 
 	{ "name": "m_axi_DATA_BUNDLE_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_BUNDLE", "role": "AWQOS" }} , 
 	{ "name": "m_axi_DATA_BUNDLE_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_BUNDLE", "role": "AWREGION" }} , 
 	{ "name": "m_axi_DATA_BUNDLE_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_BUNDLE", "role": "AWUSER" }} , 
 	{ "name": "m_axi_DATA_BUNDLE_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_BUNDLE", "role": "WVALID" }} , 
 	{ "name": "m_axi_DATA_BUNDLE_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_BUNDLE", "role": "WREADY" }} , 
 	{ "name": "m_axi_DATA_BUNDLE_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "DATA_BUNDLE", "role": "WDATA" }} , 
 	{ "name": "m_axi_DATA_BUNDLE_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_BUNDLE", "role": "WSTRB" }} , 
 	{ "name": "m_axi_DATA_BUNDLE_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_BUNDLE", "role": "WLAST" }} , 
 	{ "name": "m_axi_DATA_BUNDLE_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_BUNDLE", "role": "WID" }} , 
 	{ "name": "m_axi_DATA_BUNDLE_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_BUNDLE", "role": "WUSER" }} , 
 	{ "name": "m_axi_DATA_BUNDLE_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_BUNDLE", "role": "ARVALID" }} , 
 	{ "name": "m_axi_DATA_BUNDLE_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_BUNDLE", "role": "ARREADY" }} , 
 	{ "name": "m_axi_DATA_BUNDLE_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "DATA_BUNDLE", "role": "ARADDR" }} , 
 	{ "name": "m_axi_DATA_BUNDLE_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_BUNDLE", "role": "ARID" }} , 
 	{ "name": "m_axi_DATA_BUNDLE_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "DATA_BUNDLE", "role": "ARLEN" }} , 
 	{ "name": "m_axi_DATA_BUNDLE_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "DATA_BUNDLE", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_DATA_BUNDLE_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA_BUNDLE", "role": "ARBURST" }} , 
 	{ "name": "m_axi_DATA_BUNDLE_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA_BUNDLE", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_DATA_BUNDLE_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_BUNDLE", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_DATA_BUNDLE_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "DATA_BUNDLE", "role": "ARPROT" }} , 
 	{ "name": "m_axi_DATA_BUNDLE_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_BUNDLE", "role": "ARQOS" }} , 
 	{ "name": "m_axi_DATA_BUNDLE_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "DATA_BUNDLE", "role": "ARREGION" }} , 
 	{ "name": "m_axi_DATA_BUNDLE_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_BUNDLE", "role": "ARUSER" }} , 
 	{ "name": "m_axi_DATA_BUNDLE_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_BUNDLE", "role": "RVALID" }} , 
 	{ "name": "m_axi_DATA_BUNDLE_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_BUNDLE", "role": "RREADY" }} , 
 	{ "name": "m_axi_DATA_BUNDLE_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "DATA_BUNDLE", "role": "RDATA" }} , 
 	{ "name": "m_axi_DATA_BUNDLE_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_BUNDLE", "role": "RLAST" }} , 
 	{ "name": "m_axi_DATA_BUNDLE_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_BUNDLE", "role": "RID" }} , 
 	{ "name": "m_axi_DATA_BUNDLE_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_BUNDLE", "role": "RUSER" }} , 
 	{ "name": "m_axi_DATA_BUNDLE_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA_BUNDLE", "role": "RRESP" }} , 
 	{ "name": "m_axi_DATA_BUNDLE_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_BUNDLE", "role": "BVALID" }} , 
 	{ "name": "m_axi_DATA_BUNDLE_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_BUNDLE", "role": "BREADY" }} , 
 	{ "name": "m_axi_DATA_BUNDLE_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "DATA_BUNDLE", "role": "BRESP" }} , 
 	{ "name": "m_axi_DATA_BUNDLE_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_BUNDLE", "role": "BID" }} , 
 	{ "name": "m_axi_DATA_BUNDLE_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DATA_BUNDLE", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "gemm",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "403964955", "EstimateLatencyMax" : "403964955",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "DATA_BUNDLE", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "DATA_BUNDLE_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "DATA_BUNDLE_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "DATA_BUNDLE_blk_n_B", "Type" : "RtlSignal"},
					{"Name" : "DATA_BUNDLE_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "DATA_BUNDLE_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "a_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_r", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gemm_CONTROL_BUS_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gemm_DATA_BUNDLE_m_axi_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.a_buff_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.b_buff_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.c_buff_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	gemm {
		DATA_BUNDLE {Type IO LastRead 20 FirstWrite 21}
		a_in {Type I LastRead 0 FirstWrite -1}
		b_in {Type I LastRead 0 FirstWrite -1}
		output_r {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "403964955", "Max" : "403964955"}
	, {"Name" : "Interval", "Min" : "403964956", "Max" : "403964956"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
]}

set Spec2ImplPortList { 
	DATA_BUNDLE { m_axi {  { m_axi_DATA_BUNDLE_AWVALID VALID 1 1 }  { m_axi_DATA_BUNDLE_AWREADY READY 0 1 }  { m_axi_DATA_BUNDLE_AWADDR ADDR 1 32 }  { m_axi_DATA_BUNDLE_AWID ID 1 1 }  { m_axi_DATA_BUNDLE_AWLEN LEN 1 8 }  { m_axi_DATA_BUNDLE_AWSIZE SIZE 1 3 }  { m_axi_DATA_BUNDLE_AWBURST BURST 1 2 }  { m_axi_DATA_BUNDLE_AWLOCK LOCK 1 2 }  { m_axi_DATA_BUNDLE_AWCACHE CACHE 1 4 }  { m_axi_DATA_BUNDLE_AWPROT PROT 1 3 }  { m_axi_DATA_BUNDLE_AWQOS QOS 1 4 }  { m_axi_DATA_BUNDLE_AWREGION REGION 1 4 }  { m_axi_DATA_BUNDLE_AWUSER USER 1 1 }  { m_axi_DATA_BUNDLE_WVALID VALID 1 1 }  { m_axi_DATA_BUNDLE_WREADY READY 0 1 }  { m_axi_DATA_BUNDLE_WDATA DATA 1 32 }  { m_axi_DATA_BUNDLE_WSTRB STRB 1 4 }  { m_axi_DATA_BUNDLE_WLAST LAST 1 1 }  { m_axi_DATA_BUNDLE_WID ID 1 1 }  { m_axi_DATA_BUNDLE_WUSER USER 1 1 }  { m_axi_DATA_BUNDLE_ARVALID VALID 1 1 }  { m_axi_DATA_BUNDLE_ARREADY READY 0 1 }  { m_axi_DATA_BUNDLE_ARADDR ADDR 1 32 }  { m_axi_DATA_BUNDLE_ARID ID 1 1 }  { m_axi_DATA_BUNDLE_ARLEN LEN 1 8 }  { m_axi_DATA_BUNDLE_ARSIZE SIZE 1 3 }  { m_axi_DATA_BUNDLE_ARBURST BURST 1 2 }  { m_axi_DATA_BUNDLE_ARLOCK LOCK 1 2 }  { m_axi_DATA_BUNDLE_ARCACHE CACHE 1 4 }  { m_axi_DATA_BUNDLE_ARPROT PROT 1 3 }  { m_axi_DATA_BUNDLE_ARQOS QOS 1 4 }  { m_axi_DATA_BUNDLE_ARREGION REGION 1 4 }  { m_axi_DATA_BUNDLE_ARUSER USER 1 1 }  { m_axi_DATA_BUNDLE_RVALID VALID 0 1 }  { m_axi_DATA_BUNDLE_RREADY READY 1 1 }  { m_axi_DATA_BUNDLE_RDATA DATA 0 32 }  { m_axi_DATA_BUNDLE_RLAST LAST 0 1 }  { m_axi_DATA_BUNDLE_RID ID 0 1 }  { m_axi_DATA_BUNDLE_RUSER USER 0 1 }  { m_axi_DATA_BUNDLE_RRESP RESP 0 2 }  { m_axi_DATA_BUNDLE_BVALID VALID 0 1 }  { m_axi_DATA_BUNDLE_BREADY READY 1 1 }  { m_axi_DATA_BUNDLE_BRESP RESP 0 2 }  { m_axi_DATA_BUNDLE_BID ID 0 1 }  { m_axi_DATA_BUNDLE_BUSER USER 0 1 } } }
}

set busDeadlockParameterList { 
	{ DATA_BUNDLE { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 256 MAX_WRITE_BURST_LENGTH 256 } } \
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ DATA_BUNDLE 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ DATA_BUNDLE 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
