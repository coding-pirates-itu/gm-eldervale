/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 36195CAC
/// @DnDArgument : "script" "GetMoveInput"
/// @DnDArgument : "arg" "move_speed"
/// @DnDSaveInfo : "script" "GetMoveInput"
script_execute(GetMoveInput, move_speed);

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