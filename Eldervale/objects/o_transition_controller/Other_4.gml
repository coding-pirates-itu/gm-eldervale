/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1F6250B9
/// @DnDArgument : "var" "global.target_room_sequence"
/// @DnDArgument : "op" "4"
if(global.target_room_sequence >= 0){	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 2AECA8C8
	/// @DnDParent : 1F6250B9
	/// @DnDArgument : "function" "PlaceTransition"
	/// @DnDArgument : "arg" "global.target_room_sequence"
	PlaceTransition(global.target_room_sequence);}