# This function returns the board file info required to associate the project with the appropriate board
proc get_digilent_board_file {} {
	return "digilentinc.com:cora-z7-07s:1.0"
}

proc set_digilent_project_properties {project_obj part brd_part} {
	set_property "default_lib" "xil_defaultlib" $project_obj
	set_property "part" $part $project_obj
	set_property "board_part" $brd_part $project_obj
	set_property "simulator_language" "Mixed" $project_obj
	set_property "target_language" "VHDL" $project_obj
}