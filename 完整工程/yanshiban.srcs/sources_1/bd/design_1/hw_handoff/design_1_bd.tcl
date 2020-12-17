
################################################################
# This is a generated script based on design: design_1
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2017.4
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source design_1_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# bijiao, check_g, check_r, da, da, erxuanyi, huofei, huofei, jicun, jishi, jishu, jishum, led, mima, pianxuan1, pianxuan2, xiaodou, xiaodou, xiaodou, xiaodou, xiaodou, xiaodou, xiaodou, xiaodou, xiaodou, xiaodou

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a35tcsg324-3
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name design_1

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set clear [ create_bd_port -dir I clear ]
  set clk [ create_bd_port -dir I -type clk clk ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {100000000} \
 ] $clk
  set l1 [ create_bd_port -dir O l1 ]
  set l2 [ create_bd_port -dir O l2 ]
  set l3 [ create_bd_port -dir O l3 ]
  set l4 [ create_bd_port -dir O l4 ]
  set l5 [ create_bd_port -dir O l5 ]
  set l6 [ create_bd_port -dir O l6 ]
  set l7 [ create_bd_port -dir O l7 ]
  set l8 [ create_bd_port -dir O l8 ]
  set led_g [ create_bd_port -dir O led_g ]
  set led_g_1 [ create_bd_port -dir O led_g_1 ]
  set led_g_2 [ create_bd_port -dir O led_g_2 ]
  set led_g_3 [ create_bd_port -dir O led_g_3 ]
  set led_r [ create_bd_port -dir O led_r ]
  set led_r_1 [ create_bd_port -dir O led_r_1 ]
  set led_r_2 [ create_bd_port -dir O led_r_2 ]
  set led_r_3 [ create_bd_port -dir O led_r_3 ]
  set lock [ create_bd_port -dir I lock ]
  set num0_1 [ create_bd_port -dir O num0_1 ]
  set num0_1_1 [ create_bd_port -dir O num0_1_1 ]
  set num0_2 [ create_bd_port -dir O num0_2 ]
  set num0_2_1 [ create_bd_port -dir O num0_2_1 ]
  set num0_3 [ create_bd_port -dir O num0_3 ]
  set num0_3_1 [ create_bd_port -dir O num0_3_1 ]
  set num0_4 [ create_bd_port -dir O num0_4 ]
  set num0_4_1 [ create_bd_port -dir O num0_4_1 ]
  set num0_5 [ create_bd_port -dir O num0_5 ]
  set num0_5_1 [ create_bd_port -dir O num0_5_1 ]
  set num0_6 [ create_bd_port -dir O num0_6 ]
  set num0_6_1 [ create_bd_port -dir O num0_6_1 ]
  set num0_7 [ create_bd_port -dir O num0_7 ]
  set num0_7_1 [ create_bd_port -dir O num0_7_1 ]
  set number [ create_bd_port -dir O -from 3 -to 0 number ]
  set number2 [ create_bd_port -dir O -from 3 -to 0 number2 ]
  set pw_1 [ create_bd_port -dir I pw_1 ]
  set pw_2 [ create_bd_port -dir I pw_2 ]
  set pw_3 [ create_bd_port -dir I pw_3 ]
  set pw_4 [ create_bd_port -dir I pw_4 ]
  set pw_5 [ create_bd_port -dir I pw_5 ]
  set pw_6 [ create_bd_port -dir I pw_6 ]
  set pw_7 [ create_bd_port -dir I pw_7 ]
  set pw_8 [ create_bd_port -dir I pw_8 ]
  set pw_9 [ create_bd_port -dir I pw_9 ]
  set pw_10 [ create_bd_port -dir I pw_10 ]
  set start [ create_bd_port -dir I start ]
  set xiugai [ create_bd_port -dir I xiugai ]

  # Create instance: bijiao_0, and set properties
  set block_name bijiao
  set block_cell_name bijiao_0
  if { [catch {set bijiao_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $bijiao_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: check_g_0, and set properties
  set block_name check_g
  set block_cell_name check_g_0
  if { [catch {set check_g_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $check_g_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: check_r_0, and set properties
  set block_name check_r
  set block_cell_name check_r_0
  if { [catch {set check_r_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $check_r_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: da_0, and set properties
  set block_name da
  set block_cell_name da_0
  if { [catch {set da_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $da_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: da_1, and set properties
  set block_name da
  set block_cell_name da_1
  if { [catch {set da_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $da_1 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: erxuanyi_0, and set properties
  set block_name erxuanyi
  set block_cell_name erxuanyi_0
  if { [catch {set erxuanyi_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $erxuanyi_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: huofei_0, and set properties
  set block_name huofei
  set block_cell_name huofei_0
  if { [catch {set huofei_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $huofei_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: huofei_1, and set properties
  set block_name huofei
  set block_cell_name huofei_1
  if { [catch {set huofei_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $huofei_1 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: jicun_0, and set properties
  set block_name jicun
  set block_cell_name jicun_0
  if { [catch {set jicun_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $jicun_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: jishi_0, and set properties
  set block_name jishi
  set block_cell_name jishi_0
  if { [catch {set jishi_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $jishi_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: jishu_0, and set properties
  set block_name jishu
  set block_cell_name jishu_0
  if { [catch {set jishu_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $jishu_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: jishum_0, and set properties
  set block_name jishum
  set block_cell_name jishum_0
  if { [catch {set jishum_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $jishum_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: led_0, and set properties
  set block_name led
  set block_cell_name led_0
  if { [catch {set led_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $led_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: mima_0, and set properties
  set block_name mima
  set block_cell_name mima_0
  if { [catch {set mima_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $mima_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: pianxuan1_0, and set properties
  set block_name pianxuan1
  set block_cell_name pianxuan1_0
  if { [catch {set pianxuan1_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $pianxuan1_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: pianxuan2_0, and set properties
  set block_name pianxuan2
  set block_cell_name pianxuan2_0
  if { [catch {set pianxuan2_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $pianxuan2_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: xiaodou_0, and set properties
  set block_name xiaodou
  set block_cell_name xiaodou_0
  if { [catch {set xiaodou_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $xiaodou_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: xiaodou_1, and set properties
  set block_name xiaodou
  set block_cell_name xiaodou_1
  if { [catch {set xiaodou_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $xiaodou_1 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: xiaodou_2, and set properties
  set block_name xiaodou
  set block_cell_name xiaodou_2
  if { [catch {set xiaodou_2 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $xiaodou_2 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: xiaodou_3, and set properties
  set block_name xiaodou
  set block_cell_name xiaodou_3
  if { [catch {set xiaodou_3 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $xiaodou_3 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: xiaodou_4, and set properties
  set block_name xiaodou
  set block_cell_name xiaodou_4
  if { [catch {set xiaodou_4 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $xiaodou_4 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: xiaodou_5, and set properties
  set block_name xiaodou
  set block_cell_name xiaodou_5
  if { [catch {set xiaodou_5 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $xiaodou_5 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: xiaodou_6, and set properties
  set block_name xiaodou
  set block_cell_name xiaodou_6
  if { [catch {set xiaodou_6 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $xiaodou_6 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: xiaodou_7, and set properties
  set block_name xiaodou
  set block_cell_name xiaodou_7
  if { [catch {set xiaodou_7 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $xiaodou_7 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: xiaodou_8, and set properties
  set block_name xiaodou
  set block_cell_name xiaodou_8
  if { [catch {set xiaodou_8 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $xiaodou_8 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: xiaodou_9, and set properties
  set block_name xiaodou
  set block_cell_name xiaodou_9
  if { [catch {set xiaodou_9 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $xiaodou_9 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create port connections
  connect_bd_net -net bijiao_0_bijiao_g [get_bd_pins bijiao_0/bijiao_g] [get_bd_pins check_g_0/bijiao_g]
  connect_bd_net -net bijiao_0_bijiao_r [get_bd_pins bijiao_0/bijiao_r] [get_bd_pins check_r_0/bijiao_r]
  connect_bd_net -net check_g_0_led_g [get_bd_ports led_g] [get_bd_ports led_g_1] [get_bd_ports led_g_2] [get_bd_ports led_g_3] [get_bd_pins check_g_0/led_g] [get_bd_pins erxuanyi_0/green1] [get_bd_pins jishi_0/green] [get_bd_pins jishu_0/green]
  connect_bd_net -net check_r_0_led_r [get_bd_ports led_r] [get_bd_ports led_r_1] [get_bd_ports led_r_2] [get_bd_ports led_r_3] [get_bd_pins check_r_0/led_r] [get_bd_pins jicun_0/red] [get_bd_pins jishi_0/red] [get_bd_pins led_0/red] [get_bd_pins pianxuan2_0/red]
  connect_bd_net -net clear_1 [get_bd_ports clear] [get_bd_pins jishu_0/clear] [get_bd_pins jishum_0/clear]
  connect_bd_net -net clk_1 [get_bd_ports clk] [get_bd_pins bijiao_0/clk] [get_bd_pins da_0/shuru] [get_bd_pins da_1/shuru] [get_bd_pins jicun_0/clk] [get_bd_pins jishi_0/clk] [get_bd_pins led_0/clk] [get_bd_pins mima_0/clk] [get_bd_pins pianxuan1_0/clk] [get_bd_pins pianxuan2_0/clk] [get_bd_pins xiaodou_0/clk] [get_bd_pins xiaodou_1/clk] [get_bd_pins xiaodou_2/clk] [get_bd_pins xiaodou_3/clk] [get_bd_pins xiaodou_4/clk] [get_bd_pins xiaodou_5/clk] [get_bd_pins xiaodou_6/clk] [get_bd_pins xiaodou_7/clk] [get_bd_pins xiaodou_8/clk] [get_bd_pins xiaodou_9/clk]
  connect_bd_net -net da_0_shuchu [get_bd_pins da_0/shuchu] [get_bd_pins jicun_0/shuru]
  connect_bd_net -net da_1_shuchu [get_bd_pins da_1/shuchu] [get_bd_pins mima_0/shuru]
  connect_bd_net -net erxuanyi_0_m1 [get_bd_pins da_0/shuru1] [get_bd_pins erxuanyi_0/m1] [get_bd_pins huofei_0/pw1]
  connect_bd_net -net erxuanyi_0_m2 [get_bd_pins da_0/shuru2] [get_bd_pins erxuanyi_0/m2] [get_bd_pins huofei_0/pw2]
  connect_bd_net -net erxuanyi_0_m3 [get_bd_pins da_0/shuru3] [get_bd_pins erxuanyi_0/m3] [get_bd_pins huofei_0/pw3]
  connect_bd_net -net erxuanyi_0_m4 [get_bd_pins da_0/shuru4] [get_bd_pins erxuanyi_0/m4] [get_bd_pins huofei_0/pw4]
  connect_bd_net -net erxuanyi_0_m5 [get_bd_pins da_0/shuru5] [get_bd_pins erxuanyi_0/m5] [get_bd_pins huofei_0/pw5]
  connect_bd_net -net erxuanyi_0_m6 [get_bd_pins da_0/shuru6] [get_bd_pins erxuanyi_0/m6] [get_bd_pins huofei_0/pw6]
  connect_bd_net -net erxuanyi_0_m7 [get_bd_pins da_0/shuru7] [get_bd_pins erxuanyi_0/m7] [get_bd_pins huofei_0/pw7]
  connect_bd_net -net erxuanyi_0_m8 [get_bd_pins da_0/shuru8] [get_bd_pins erxuanyi_0/m8] [get_bd_pins huofei_0/pw8]
  connect_bd_net -net erxuanyi_0_m9 [get_bd_pins da_0/shuru9] [get_bd_pins erxuanyi_0/m9] [get_bd_pins huofei_0/pw9]
  connect_bd_net -net erxuanyi_0_m10 [get_bd_pins da_0/shuru10] [get_bd_pins erxuanyi_0/m10] [get_bd_pins huofei_0/pw10]
  connect_bd_net -net erxuanyi_0_n1 [get_bd_pins da_1/shuru1] [get_bd_pins erxuanyi_0/n1] [get_bd_pins huofei_1/pw1]
  connect_bd_net -net erxuanyi_0_n2 [get_bd_pins da_1/shuru2] [get_bd_pins erxuanyi_0/n2] [get_bd_pins huofei_1/pw2]
  connect_bd_net -net erxuanyi_0_n3 [get_bd_pins da_1/shuru3] [get_bd_pins erxuanyi_0/n3] [get_bd_pins huofei_1/pw3]
  connect_bd_net -net erxuanyi_0_n4 [get_bd_pins da_1/shuru4] [get_bd_pins erxuanyi_0/n4] [get_bd_pins huofei_1/pw4]
  connect_bd_net -net erxuanyi_0_n5 [get_bd_pins da_1/shuru5] [get_bd_pins erxuanyi_0/n5] [get_bd_pins huofei_1/pw5]
  connect_bd_net -net erxuanyi_0_n6 [get_bd_pins da_1/shuru6] [get_bd_pins erxuanyi_0/n6] [get_bd_pins huofei_1/pw6]
  connect_bd_net -net erxuanyi_0_n7 [get_bd_pins da_1/shuru7] [get_bd_pins erxuanyi_0/n7] [get_bd_pins huofei_1/pw7]
  connect_bd_net -net erxuanyi_0_n8 [get_bd_pins da_1/shuru8] [get_bd_pins erxuanyi_0/n8] [get_bd_pins huofei_1/pw8]
  connect_bd_net -net erxuanyi_0_n9 [get_bd_pins da_1/shuru9] [get_bd_pins erxuanyi_0/n9] [get_bd_pins huofei_1/pw9]
  connect_bd_net -net erxuanyi_0_n10 [get_bd_pins da_1/shuru10] [get_bd_pins erxuanyi_0/n10] [get_bd_pins huofei_1/pw10]
  connect_bd_net -net huofei_0_p_out [get_bd_pins huofei_0/p_out] [get_bd_pins jishu_0/key_in]
  connect_bd_net -net huofei_1_p_out [get_bd_pins huofei_1/p_out] [get_bd_pins jishum_0/key_in]
  connect_bd_net -net jicun_0_n1 [get_bd_pins bijiao_0/in0] [get_bd_pins jicun_0/n1]
  connect_bd_net -net jicun_0_n2 [get_bd_pins bijiao_0/in1] [get_bd_pins jicun_0/n2]
  connect_bd_net -net jicun_0_n3 [get_bd_pins bijiao_0/in2] [get_bd_pins jicun_0/n3]
  connect_bd_net -net jicun_0_n4 [get_bd_pins bijiao_0/in3] [get_bd_pins jicun_0/n4]
  connect_bd_net -net jicun_0_shu01 [get_bd_pins jicun_0/shu01] [get_bd_pins pianxuan1_0/shu01]
  connect_bd_net -net jicun_0_shu02 [get_bd_pins jicun_0/shu02] [get_bd_pins pianxuan1_0/shu02]
  connect_bd_net -net jicun_0_shu03 [get_bd_pins jicun_0/shu03] [get_bd_pins pianxuan1_0/shu03]
  connect_bd_net -net jicun_0_shu04 [get_bd_pins jicun_0/shu04] [get_bd_pins pianxuan1_0/shu04]
  connect_bd_net -net jicun_0_shu05 [get_bd_pins jicun_0/shu05] [get_bd_pins pianxuan1_0/shu05]
  connect_bd_net -net jicun_0_shu06 [get_bd_pins jicun_0/shu06] [get_bd_pins pianxuan1_0/shu06]
  connect_bd_net -net jicun_0_shu07 [get_bd_pins jicun_0/shu07] [get_bd_pins pianxuan1_0/shu07]
  connect_bd_net -net jicun_0_shu11 [get_bd_pins jicun_0/shu11] [get_bd_pins pianxuan1_0/shu11]
  connect_bd_net -net jicun_0_shu12 [get_bd_pins jicun_0/shu12] [get_bd_pins pianxuan1_0/shu12]
  connect_bd_net -net jicun_0_shu13 [get_bd_pins jicun_0/shu13] [get_bd_pins pianxuan1_0/shu13]
  connect_bd_net -net jicun_0_shu14 [get_bd_pins jicun_0/shu14] [get_bd_pins pianxuan1_0/shu14]
  connect_bd_net -net jicun_0_shu15 [get_bd_pins jicun_0/shu15] [get_bd_pins pianxuan1_0/shu15]
  connect_bd_net -net jicun_0_shu16 [get_bd_pins jicun_0/shu16] [get_bd_pins pianxuan1_0/shu16]
  connect_bd_net -net jicun_0_shu17 [get_bd_pins jicun_0/shu17] [get_bd_pins pianxuan1_0/shu17]
  connect_bd_net -net jicun_0_shu21 [get_bd_pins jicun_0/shu21] [get_bd_pins pianxuan1_0/shu21]
  connect_bd_net -net jicun_0_shu22 [get_bd_pins jicun_0/shu22] [get_bd_pins pianxuan1_0/shu22]
  connect_bd_net -net jicun_0_shu23 [get_bd_pins jicun_0/shu23] [get_bd_pins pianxuan1_0/shu23]
  connect_bd_net -net jicun_0_shu24 [get_bd_pins jicun_0/shu24] [get_bd_pins pianxuan1_0/shu24]
  connect_bd_net -net jicun_0_shu25 [get_bd_pins jicun_0/shu25] [get_bd_pins pianxuan1_0/shu25]
  connect_bd_net -net jicun_0_shu26 [get_bd_pins jicun_0/shu26] [get_bd_pins pianxuan1_0/shu26]
  connect_bd_net -net jicun_0_shu27 [get_bd_pins jicun_0/shu27] [get_bd_pins pianxuan1_0/shu27]
  connect_bd_net -net jicun_0_shu31 [get_bd_pins jicun_0/shu31] [get_bd_pins pianxuan1_0/shu31]
  connect_bd_net -net jicun_0_shu32 [get_bd_pins jicun_0/shu32] [get_bd_pins pianxuan1_0/shu32]
  connect_bd_net -net jicun_0_shu33 [get_bd_pins jicun_0/shu33] [get_bd_pins pianxuan1_0/shu33]
  connect_bd_net -net jicun_0_shu34 [get_bd_pins jicun_0/shu34] [get_bd_pins pianxuan1_0/shu34]
  connect_bd_net -net jicun_0_shu35 [get_bd_pins jicun_0/shu35] [get_bd_pins pianxuan1_0/shu35]
  connect_bd_net -net jicun_0_shu36 [get_bd_pins jicun_0/shu36] [get_bd_pins pianxuan1_0/shu36]
  connect_bd_net -net jicun_0_shu37 [get_bd_pins jicun_0/shu37] [get_bd_pins pianxuan1_0/shu37]
  connect_bd_net -net jishi_0_jishi_g [get_bd_pins check_g_0/jishi_g] [get_bd_pins jishi_0/jishi_g]
  connect_bd_net -net jishi_0_jishi_r [get_bd_pins check_r_0/jishi_r] [get_bd_pins jishi_0/jishi_r]
  connect_bd_net -net jishi_0_num_0 [get_bd_pins jishi_0/num_0] [get_bd_pins pianxuan2_0/shu11]
  connect_bd_net -net jishi_0_num_1 [get_bd_pins jishi_0/num_1] [get_bd_pins pianxuan2_0/shu12]
  connect_bd_net -net jishi_0_num_2 [get_bd_pins jishi_0/num_2] [get_bd_pins pianxuan2_0/shu13]
  connect_bd_net -net jishi_0_num_3 [get_bd_pins jishi_0/num_3] [get_bd_pins pianxuan2_0/shu14]
  connect_bd_net -net jishi_0_num_4 [get_bd_pins jishi_0/num_4] [get_bd_pins pianxuan2_0/shu15]
  connect_bd_net -net jishi_0_num_5 [get_bd_pins jishi_0/num_5] [get_bd_pins pianxuan2_0/shu16]
  connect_bd_net -net jishi_0_num_6 [get_bd_pins jishi_0/num_6] [get_bd_pins pianxuan2_0/shu17]
  connect_bd_net -net jishu_0_count [get_bd_pins jicun_0/jishu] [get_bd_pins jishu_0/count]
  connect_bd_net -net jishu_0_kaishi [get_bd_pins jicun_0/kaishi] [get_bd_pins jishi_0/jicun]
  connect_bd_net -net jishu_0_shu01 [get_bd_pins jishu_0/shu01] [get_bd_pins pianxuan2_0/shu01]
  connect_bd_net -net jishu_0_shu02 [get_bd_pins jishu_0/shu02] [get_bd_pins pianxuan2_0/shu02]
  connect_bd_net -net jishu_0_shu03 [get_bd_pins jishu_0/shu03] [get_bd_pins pianxuan2_0/shu03]
  connect_bd_net -net jishu_0_shu04 [get_bd_pins jishu_0/shu04] [get_bd_pins pianxuan2_0/shu04]
  connect_bd_net -net jishu_0_shu05 [get_bd_pins jishu_0/shu05] [get_bd_pins pianxuan2_0/shu05]
  connect_bd_net -net jishu_0_shu06 [get_bd_pins jishu_0/shu06] [get_bd_pins pianxuan2_0/shu06]
  connect_bd_net -net jishu_0_shu07 [get_bd_pins jishu_0/shu07] [get_bd_pins pianxuan2_0/shu07]
  connect_bd_net -net jishum_0_count [get_bd_pins jishum_0/count] [get_bd_pins mima_0/jishu]
  connect_bd_net -net led_0_l1 [get_bd_ports l1] [get_bd_pins led_0/l1]
  connect_bd_net -net led_0_l2 [get_bd_ports l2] [get_bd_pins led_0/l2]
  connect_bd_net -net led_0_l3 [get_bd_ports l3] [get_bd_pins led_0/l3]
  connect_bd_net -net led_0_l4 [get_bd_ports l4] [get_bd_pins led_0/l4]
  connect_bd_net -net led_0_l5 [get_bd_ports l5] [get_bd_pins led_0/l5]
  connect_bd_net -net led_0_l6 [get_bd_ports l6] [get_bd_pins led_0/l6]
  connect_bd_net -net led_0_l7 [get_bd_ports l7] [get_bd_pins led_0/l7]
  connect_bd_net -net led_0_l8 [get_bd_ports l8] [get_bd_pins led_0/l8]
  connect_bd_net -net lock_1 [get_bd_ports lock] [get_bd_pins bijiao_0/lock] [get_bd_pins jicun_0/lock]
  connect_bd_net -net mima_0_n1 [get_bd_pins bijiao_0/mima0] [get_bd_pins mima_0/n1]
  connect_bd_net -net mima_0_n2 [get_bd_pins bijiao_0/mima1] [get_bd_pins mima_0/n2]
  connect_bd_net -net mima_0_n3 [get_bd_pins bijiao_0/mima2] [get_bd_pins mima_0/n3]
  connect_bd_net -net mima_0_n4 [get_bd_pins bijiao_0/mima3] [get_bd_pins mima_0/n4]
  connect_bd_net -net pianxuan1_0_num0_1 [get_bd_ports num0_1] [get_bd_pins pianxuan1_0/num0_1]
  connect_bd_net -net pianxuan1_0_num0_2 [get_bd_ports num0_2] [get_bd_pins pianxuan1_0/num0_2]
  connect_bd_net -net pianxuan1_0_num0_3 [get_bd_ports num0_3] [get_bd_pins pianxuan1_0/num0_3]
  connect_bd_net -net pianxuan1_0_num0_4 [get_bd_ports num0_4] [get_bd_pins pianxuan1_0/num0_4]
  connect_bd_net -net pianxuan1_0_num0_5 [get_bd_ports num0_5] [get_bd_pins pianxuan1_0/num0_5]
  connect_bd_net -net pianxuan1_0_num0_6 [get_bd_ports num0_6] [get_bd_pins pianxuan1_0/num0_6]
  connect_bd_net -net pianxuan1_0_num0_7 [get_bd_ports num0_7] [get_bd_pins pianxuan1_0/num0_7]
  connect_bd_net -net pianxuan1_0_number [get_bd_ports number] [get_bd_pins pianxuan1_0/number]
  connect_bd_net -net pianxuan2_0_num0_1 [get_bd_ports num0_1_1] [get_bd_pins pianxuan2_0/num0_1]
  connect_bd_net -net pianxuan2_0_num0_2 [get_bd_ports num0_2_1] [get_bd_pins pianxuan2_0/num0_2]
  connect_bd_net -net pianxuan2_0_num0_3 [get_bd_ports num0_3_1] [get_bd_pins pianxuan2_0/num0_3]
  connect_bd_net -net pianxuan2_0_num0_4 [get_bd_ports num0_4_1] [get_bd_pins pianxuan2_0/num0_4]
  connect_bd_net -net pianxuan2_0_num0_5 [get_bd_ports num0_5_1] [get_bd_pins pianxuan2_0/num0_5]
  connect_bd_net -net pianxuan2_0_num0_6 [get_bd_ports num0_6_1] [get_bd_pins pianxuan2_0/num0_6]
  connect_bd_net -net pianxuan2_0_num0_7 [get_bd_ports num0_7_1] [get_bd_pins pianxuan2_0/num0_7]
  connect_bd_net -net pianxuan2_0_number2 [get_bd_ports number2] [get_bd_pins pianxuan2_0/number2]
  connect_bd_net -net pw_10_1 [get_bd_ports pw_10] [get_bd_pins xiaodou_5/key_in]
  connect_bd_net -net pw_1_1 [get_bd_ports pw_1] [get_bd_pins xiaodou_6/key_in]
  connect_bd_net -net pw_2_1 [get_bd_ports pw_2] [get_bd_pins xiaodou_7/key_in]
  connect_bd_net -net pw_3_1 [get_bd_ports pw_3] [get_bd_pins xiaodou_8/key_in]
  connect_bd_net -net pw_4_1 [get_bd_ports pw_4] [get_bd_pins xiaodou_9/key_in]
  connect_bd_net -net pw_5_1 [get_bd_ports pw_5] [get_bd_pins xiaodou_0/key_in]
  connect_bd_net -net pw_6_1 [get_bd_ports pw_6] [get_bd_pins xiaodou_1/key_in]
  connect_bd_net -net pw_7_1 [get_bd_ports pw_7] [get_bd_pins xiaodou_2/key_in]
  connect_bd_net -net pw_8_1 [get_bd_ports pw_8] [get_bd_pins xiaodou_3/key_in]
  connect_bd_net -net pw_9_1 [get_bd_ports pw_9] [get_bd_pins xiaodou_4/key_in]
  connect_bd_net -net start_1 [get_bd_ports start] [get_bd_pins bijiao_0/start]
  connect_bd_net -net xiaodou_0_key_out [get_bd_pins erxuanyi_0/pw_5] [get_bd_pins xiaodou_0/key_out]
  connect_bd_net -net xiaodou_1_key_out [get_bd_pins erxuanyi_0/pw_6] [get_bd_pins xiaodou_1/key_out]
  connect_bd_net -net xiaodou_2_key_out [get_bd_pins erxuanyi_0/pw_7] [get_bd_pins xiaodou_2/key_out]
  connect_bd_net -net xiaodou_3_key_out [get_bd_pins erxuanyi_0/pw_8] [get_bd_pins xiaodou_3/key_out]
  connect_bd_net -net xiaodou_4_key_out [get_bd_pins erxuanyi_0/pw_9] [get_bd_pins xiaodou_4/key_out]
  connect_bd_net -net xiaodou_5_key_out [get_bd_pins erxuanyi_0/pw_10] [get_bd_pins xiaodou_5/key_out]
  connect_bd_net -net xiaodou_6_key_out [get_bd_pins erxuanyi_0/pw_1] [get_bd_pins xiaodou_6/key_out]
  connect_bd_net -net xiaodou_7_key_out [get_bd_pins erxuanyi_0/pw_2] [get_bd_pins xiaodou_7/key_out]
  connect_bd_net -net xiaodou_8_key_out [get_bd_pins erxuanyi_0/pw_3] [get_bd_pins xiaodou_8/key_out]
  connect_bd_net -net xiaodou_9_key_out [get_bd_pins erxuanyi_0/pw_4] [get_bd_pins xiaodou_9/key_out]
  connect_bd_net -net xiugai_1 [get_bd_ports xiugai] [get_bd_pins erxuanyi_0/xiugai]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


