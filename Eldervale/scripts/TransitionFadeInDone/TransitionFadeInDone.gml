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
	/// @DnDParent : 7595182C
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "global.in_room_transition"
	global.in_room_transition = false;}