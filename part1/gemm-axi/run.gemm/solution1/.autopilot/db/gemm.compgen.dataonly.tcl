# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_CONTROL_BUS {
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
a_in { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
b_in { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
output_r { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 32
	offset_end 39
}
}
dict set axilite_register_dict CONTROL_BUS $port_CONTROL_BUS

