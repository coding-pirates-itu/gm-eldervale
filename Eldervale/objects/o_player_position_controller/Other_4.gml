/// @DnDAction : YoYo Games.Data Structures.Map_Get_Value
/// @DnDVersion : 1
/// @DnDHash : 54F79874
/// @DnDArgument : "assignee" "pos"
/// @DnDArgument : "assignee_temp" "1"
/// @DnDArgument : "var" "global.room_spawn_pos"
/// @DnDArgument : "key" "room"
var pos = ds_map_find_value(global.room_spawn_pos, room);

/// @DnDAction : YoYo Games.Common.If_Undefined
/// @DnDVersion : 1
/// @DnDHash : 515A2E39
/// @DnDArgument : "var" "pos"
if(pos == undefined){	/// @DnDAction : YoYo Games.Data Structures.Create_List
	/// @DnDVersion : 1
	/// @DnDHash : 104B2916
	/// @DnDParent : 515A2E39
	/// @DnDArgument : "var" "pos"
	/// @DnDArgument : "var_temp" "1"
	var pos = ds_list_create();

	/// @DnDAction : YoYo Games.Data Structures.List_Add
	/// @DnDVersion : 1
	/// @DnDHash : 7C881AA0
	/// @DnDInput : 2
	/// @DnDParent : 515A2E39
	/// @DnDArgument : "var" "pos"
	/// @DnDArgument : "value" "o_player_1.x"
	/// @DnDArgument : "value_1" "o_player_1.y"
	ds_list_add(pos, o_player_1.x, o_player_1.y);

	/// @DnDAction : YoYo Games.Data Structures.Map_Set_Value
	/// @DnDVersion : 1
	/// @DnDHash : 7412EDAD
	/// @DnDParent : 515A2E39
	/// @DnDArgument : "var" "global.room_spawn_pos"
	/// @DnDArgument : "key" "room"
	/// @DnDArgument : "value" "pos"
	ds_map_replace(global.room_spawn_pos, room, pos);}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 0C5BE8D5
else{	/// @DnDAction : YoYo Games.Data Structures.List_Get_At
	/// @DnDVersion : 1
	/// @DnDHash : 6A4BD5F3
	/// @DnDInput : 2
	/// @DnDParent : 0C5BE8D5
	/// @DnDArgument : "assignee" "o_player_1.x"
	/// @DnDArgument : "assignee_1" "o_player_1.y"
	/// @DnDArgument : "var" "pos"
	/// @DnDArgument : "index_1" "1"
	o_player_1.x = ds_list_find_value(pos, 0);
	o_player_1.y = ds_list_find_value(pos, 1);}