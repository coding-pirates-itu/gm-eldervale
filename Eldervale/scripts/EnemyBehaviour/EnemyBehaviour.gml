/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 3DAF15B0
/// @DnDComment : 
/// @DnDArgument : "funcName" "StartPatroling"
function StartPatroling() {	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1223CE56
	/// @DnDParent : 3DAF15B0
	/// @DnDArgument : "expr" "EnemyStates.IDLE"
	/// @DnDArgument : "var" "state"
	state = EnemyStates.IDLE;

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 030964CB
	/// @DnDParent : 3DAF15B0
	/// @DnDArgument : "var" "path_end_action"
	/// @DnDArgument : "value" "path_action_reverse"
	var path_end_action = path_action_reverse;

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 656A60DD
	/// @DnDParent : 3DAF15B0
	/// @DnDArgument : "expr" "idle_path_loop"
	if(idle_path_loop){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 13F58713
		/// @DnDParent : 656A60DD
		/// @DnDArgument : "expr" "path_action_continue"
		/// @DnDArgument : "var" "path_end_action"
		path_end_action = path_action_continue;}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6CFAC9B7
	/// @DnDParent : 3DAF15B0
	/// @DnDArgument : "var" "idle_path"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" "noone"
	if(!(idle_path == noone)){	/// @DnDAction : YoYo Games.Paths.Start_Path
		/// @DnDVersion : 1.1
		/// @DnDHash : 450D767C
		/// @DnDParent : 6CFAC9B7
		/// @DnDArgument : "path" "idle_path"
		/// @DnDArgument : "speed" "move_speed"
		/// @DnDArgument : "atend" "path_end_action"
		/// @DnDArgument : "relative" "true"
		path_start(idle_path, move_speed, path_end_action, true);}}