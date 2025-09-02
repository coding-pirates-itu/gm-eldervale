/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 0D3C689A
/// @DnDInput : 2
/// @DnDArgument : "expr" "x == target_x"
/// @DnDArgument : "expr_1" "y == target_y"
if(x == target_x && y == target_y){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 37A60394
	/// @DnDParent : 0D3C689A
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "move_to_mouse"
	move_to_mouse = false;}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 3A67917A
/// @DnDArgument : "expr" "can_move"
if(can_move){	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 36195CAC
	/// @DnDParent : 3A67917A
	/// @DnDArgument : "script" "GetMoveInput"
	/// @DnDSaveInfo : "script" "GetMoveInput"
	script_execute(GetMoveInput);}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 6F55BA80
else{	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 40B10087
	/// @DnDParent : 6F55BA80
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "is_moving"
	is_moving = false;}

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

/// @DnDAction : YoYo Games.Movement.move_and_collide
/// @DnDVersion : 1
/// @DnDHash : 714200DA
/// @DnDArgument : "xvel" "target_x - x"
/// @DnDArgument : "yvel" "target_y - y"
/// @DnDArgument : "num_iterations" "8"
/// @DnDArgument : "maxxmove" "move_speed"
/// @DnDArgument : "maxymove" "move_speed"
/// @DnDArgument : "object" "bounds"
move_and_collide(target_x - x, target_y - y, bounds,8,0,0,move_speed,move_speed);