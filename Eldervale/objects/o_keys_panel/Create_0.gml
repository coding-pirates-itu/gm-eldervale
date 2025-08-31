/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 37781FB8
event_inherited();

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 772E6C56
/// @DnDArgument : "msg" ""*** Keys created""
show_debug_message(string("*** Keys created"));

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 1EA3A939
/// @DnDArgument : "funcName" "get_text"
function get_text() {	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 597D40E2
	/// @DnDParent : 1EA3A939
	/// @DnDArgument : "msg" ""Keys: " + string(global.keys)"
	show_debug_message(string("Keys: " + string(global.keys)));

	/// @DnDAction : YoYo Games.Common.Return
	/// @DnDVersion : 1
	/// @DnDHash : 4E86258F
	/// @DnDParent : 1EA3A939
	/// @DnDArgument : "value" ""Keys: " + string(global.keys)"
	return "Keys: " + string(global.keys);}