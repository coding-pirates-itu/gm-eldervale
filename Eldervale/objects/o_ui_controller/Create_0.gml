/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 11FA0D24
/// @DnDArgument : "funcName" "PlaceUI"
function PlaceUI() {	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 57A5486A
	/// @DnDParent : 11FA0D24
	/// @DnDArgument : "xpos" "120"
	/// @DnDArgument : "ypos" "64"
	/// @DnDArgument : "objectid" "o_keys_panel"
	/// @DnDArgument : "layer" ""Players""
	/// @DnDSaveInfo : "objectid" "o_keys_panel"
	instance_create_layer(120, 64, "Players", o_keys_panel);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0DF52288
	/// @DnDParent : 11FA0D24
	/// @DnDArgument : "xpos" "350"
	/// @DnDArgument : "ypos" "64"
	/// @DnDArgument : "objectid" "o_gold_panel"
	/// @DnDArgument : "layer" ""Players""
	/// @DnDSaveInfo : "objectid" "o_gold_panel"
	instance_create_layer(350, 64, "Players", o_gold_panel);}

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 3D753482
/// @DnDArgument : "function" "PlaceUI"
PlaceUI();