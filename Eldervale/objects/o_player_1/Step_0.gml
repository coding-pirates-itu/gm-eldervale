/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 3A67917A
/// @DnDArgument : "expr" "can_move"
if(can_move){	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 36195CAC
	/// @DnDParent : 3A67917A
	/// @DnDArgument : "script" "GetMoveInput"
	/// @DnDArgument : "arg" "move_speed"
	/// @DnDSaveInfo : "script" "GetMoveInput"
	script_execute(GetMoveInput, move_speed);}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 6F55BA80
else{	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 40B10087
	/// @DnDParent : 6F55BA80
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "is_moving"
	is_moving = false;

	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 1657DBE6
	/// @DnDInput : 2
	/// @DnDParent : 6F55BA80
	/// @DnDArgument : "instvar" "4"
	/// @DnDArgument : "instvar_1" "5"
	hspeed = 0;
	vspeed = 0;}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 433E7BAA
/// @DnDArgument : "expr" "is_moving"
if(is_moving){	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 5DFF40EB
	/// @DnDParent : 433E7BAA
	/// @DnDArgument : "value" "s_player_1_run"
	/// @DnDArgument : "instvar" "10"
	sprite_index = s_player_1_run;}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 5FD86D37
else{	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 46BE6BD6
	/// @DnDParent : 5FD86D37
	/// @DnDArgument : "value" "s_player_1_idle"
	/// @DnDArgument : "instvar" "10"
	sprite_index = s_player_1_idle;}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0226BC8B
/// @DnDArgument : "expr" "facing"
/// @DnDArgument : "var" "image_xscale"
image_xscale = facing;