/// @DnDAction : YoYo Games.Common.Macro
/// @DnDVersion : 1
/// @DnDHash : 6ED88DBF
/// @DnDArgument : "macro" "TRANS_LAYER_NAME"
/// @DnDArgument : "value" ""Transitions""
#macro TRANS_LAYER_NAME "Transitions"

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 00B4BD55
/// @DnDInput : 3
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "expr_1" "noone"
/// @DnDArgument : "expr_2" "-1"
/// @DnDArgument : "var" "global.in_room_transition"
/// @DnDArgument : "var_1" "global.target_room"
/// @DnDArgument : "var_2" "global.target_room_sequence"
global.in_room_transition = false;
global.target_room = noone;
global.target_room_sequence = -1;

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 23056357
/// @DnDComment : 
/// @DnDArgument : "funcName" "PlaceTransition"
/// @DnDArgument : "arg" "sequence"
function PlaceTransition(sequence) {	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 33520C97
	/// @DnDParent : 23056357
	/// @DnDArgument : "code" "/// @description Place a transition on its own layer in the current room$(13_10)if (layer_exists(TRANS_LAYER_NAME)) layer_destroy(TRANS_LAYER_NAME);$(13_10)var trans_layer = layer_create(-9999, TRANS_LAYER_NAME);$(13_10)var cam = view_camera[0];$(13_10)var cam_x = camera_get_view_x(cam);$(13_10)var cam_y = camera_get_view_y(cam);$(13_10)var seq = layer_sequence_create(trans_layer, cam_x, cam_y, sequence);$(13_10)return seq;$(13_10)"
	/// @description Place a transition on its own layer in the current room
	if (layer_exists(TRANS_LAYER_NAME)) layer_destroy(TRANS_LAYER_NAME);
	var trans_layer = layer_create(-9999, TRANS_LAYER_NAME);
	var cam = view_camera[0];
	var cam_x = camera_get_view_x(cam);
	var cam_y = camera_get_view_y(cam);
	var seq = layer_sequence_create(trans_layer, cam_x, cam_y, sequence);
	return seq;}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 3458E75D
/// @DnDInput : 3
/// @DnDArgument : "funcName" "StartTransition"
/// @DnDArgument : "arg" "target_room"
/// @DnDArgument : "arg_1" "sequence_out"
/// @DnDArgument : "arg_2" "sequence_in"
function StartTransition(target_room, sequence_out, sequence_in) {	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 6C5258A9
	/// @DnDParent : 3458E75D
	/// @DnDArgument : "expr" "global.in_room_transition"
	/// @DnDArgument : "not" "1"
	if(!(global.in_room_transition)){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 335560E1
		/// @DnDInput : 3
		/// @DnDParent : 6C5258A9
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "expr_1" "target_room"
		/// @DnDArgument : "expr_2" "sequence_in"
		/// @DnDArgument : "var" "global.in_room_transition"
		/// @DnDArgument : "var_1" "global.target_room"
		/// @DnDArgument : "var_2" "global.target_room_sequence"
		global.in_room_transition = true;
		global.target_room = target_room;
		global.target_room_sequence = sequence_in;
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 78A043D0
		/// @DnDComment : Prepare the out-transition; the in-transition is set$(13_10)in Room STart event of o_transition_controller
		/// @DnDParent : 6C5258A9
		/// @DnDArgument : "function" "PlaceTransition"
		/// @DnDArgument : "arg" "sequence_out"
		PlaceTransition(sequence_out);}}