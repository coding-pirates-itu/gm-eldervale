/// @DnDAction : YoYo Games.Common.Macro
/// @DnDVersion : 1
/// @DnDHash : 6ED88DBF
/// @DnDArgument : "macro" "TRANS_LAYER_NAME"
/// @DnDArgument : "value" ""Transitions""
#macro TRANS_LAYER_NAME "Transitions"

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 00B4BD55
/// @DnDInput : 2
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "expr_1" "noone"
/// @DnDArgument : "var" "global.in_room_transition"
/// @DnDArgument : "var_1" "global.target_room"
global.in_room_transition = false;
global.target_room = noone;

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
	/// @DnDArgument : "code" "/// @description Place a transition on its own layer in the current room$(13_10)if (layer_exists(TRANS_LAYER_NAME)) layer_destroy(TRANS_LAYER_NAME);$(13_10)var trans_layer = layer_create(-9999, TRANS_LAYER_NAME);$(13_10)layer_sequence_create(trans_layer, 0, 0, sequence);$(13_10)"
	/// @description Place a transition on its own layer in the current room
	if (layer_exists(TRANS_LAYER_NAME)) layer_destroy(TRANS_LAYER_NAME);
	var trans_layer = layer_create(-9999, TRANS_LAYER_NAME);
	layer_sequence_create(trans_layer, 0, 0, sequence);}

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
		/// @DnDInput : 2
		/// @DnDParent : 6C5258A9
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "expr_1" "target_room"
		/// @DnDArgument : "var" "global.in_room_transition"
		/// @DnDArgument : "var_1" "global.target_room"
		global.in_room_transition = true;
		global.target_room = target_room;
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 78A043D0
		/// @DnDParent : 6C5258A9
		/// @DnDArgument : "function" "PlaceTransition"
		/// @DnDArgument : "arg" "sequence_out"
		PlaceTransition(sequence_out);
	
		/// @DnDAction : YoYo Games.Common.Execute_Code
		/// @DnDVersion : 1
		/// @DnDHash : 48ABBDD7
		/// @DnDParent : 6C5258A9
		/// @DnDArgument : "code" "/// @description Set room for the next operation$(13_10)layer_set_target_room(target_room);"
		/// @description Set room for the next operation
		layer_set_target_room(target_room);
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 5BC86142
		/// @DnDParent : 6C5258A9
		/// @DnDArgument : "function" "PlaceTransition"
		/// @DnDArgument : "arg" "sequence_in"
		PlaceTransition(sequence_in);
	
		/// @DnDAction : YoYo Games.Common.Execute_Code
		/// @DnDVersion : 1
		/// @DnDHash : 59C481AC
		/// @DnDParent : 6C5258A9
		/// @DnDArgument : "code" "/// @description Set room back to current$(13_10)layer_reset_target_room();"
		/// @description Set room back to current
		layer_reset_target_room();}}