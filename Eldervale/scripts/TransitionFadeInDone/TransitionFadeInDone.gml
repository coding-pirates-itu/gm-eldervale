/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 7595182C
/// @DnDArgument : "funcName" "TransitionFadeInDone"
function TransitionFadeInDone() {	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 7285405D
	/// @DnDParent : 7595182C
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)layer_sequence_destroy(self.elementID);"
	/// @description Execute Code
	layer_sequence_destroy(self.elementID);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 576BDEFE
	/// @DnDInput : 2
	/// @DnDParent : 7595182C
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "expr_1" "true"
	/// @DnDArgument : "var" "global.in_room_transition"
	/// @DnDArgument : "var_1" "o_player_1.can_move"
	global.in_room_transition = false;
	o_player_1.can_move = true;}