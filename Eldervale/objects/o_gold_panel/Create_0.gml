/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 26D87574
event_inherited();

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 71B0FB08
/// @DnDArgument : "funcName" "get_text"
function get_text() {	/// @DnDAction : YoYo Games.Common.Return
	/// @DnDVersion : 1
	/// @DnDHash : 648CE589
	/// @DnDParent : 71B0FB08
	/// @DnDArgument : "value" ""Gold: " + string(global.gold)"
	return "Gold: " + string(global.gold);}