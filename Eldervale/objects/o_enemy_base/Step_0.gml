/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6D81A12E
/// @DnDArgument : "var" "state"
/// @DnDArgument : "value" "EnemyStates.IDLE"
if(state == EnemyStates.IDLE){	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 626C1096
	/// @DnDParent : 6D81A12E
	/// @DnDArgument : "expr" "distance_to_object(o_player_1) < notice_distance"
	if(distance_to_object(o_player_1) < notice_distance){	/// @DnDAction : YoYo Games.Paths.Stop_Path
		/// @DnDVersion : 1
		/// @DnDHash : 0AB42AAF
		/// @DnDParent : 626C1096
		path_end();
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7BF54F28
		/// @DnDParent : 626C1096
		/// @DnDArgument : "expr" "EnemyStates.CHASE"
		/// @DnDArgument : "var" "state"
		state = EnemyStates.CHASE;}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 66D21C72
/// @DnDArgument : "var" "state"
/// @DnDArgument : "value" "EnemyStates.CHASE"
if(state == EnemyStates.CHASE){	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 392AAC71
	/// @DnDParent : 66D21C72
	/// @DnDArgument : "expr" "distance_to_object(o_player_1) > notice_distance"
	if(distance_to_object(o_player_1) > notice_distance){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7B06676B
		/// @DnDParent : 392AAC71
		/// @DnDArgument : "expr" "EnemyStates.RETURN"
		/// @DnDArgument : "var" "state"
		state = EnemyStates.RETURN;}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 0183583D
	/// @DnDParent : 66D21C72
	else{	/// @DnDAction : YoYo Games.Movement.move_and_collide
		/// @DnDVersion : 1
		/// @DnDHash : 6A20C67C
		/// @DnDParent : 0183583D
		/// @DnDArgument : "xvel" "o_player_1.x - x"
		/// @DnDArgument : "yvel" "o_player_1.y - y"
		/// @DnDArgument : "maxxmove" "move_speed"
		/// @DnDArgument : "maxymove" "move_speed"
		/// @DnDArgument : "object" "bounds, o_obstacle"
		move_and_collide(o_player_1.x - x, o_player_1.y - y, [bounds, o_obstacle],4,0,0,move_speed,move_speed);}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6EEBAD14
/// @DnDArgument : "var" "state"
/// @DnDArgument : "value" "EnemyStates.RETURN"
if(state == EnemyStates.RETURN){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 53E211D2
	/// @DnDParent : 6EEBAD14
	/// @DnDArgument : "var" "idle_path"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" "noone"
	if(!(idle_path == noone)){	/// @DnDAction : YoYo Games.Movement.move_and_collide
		/// @DnDVersion : 1
		/// @DnDHash : 0B2AF53D
		/// @DnDParent : 53E211D2
		/// @DnDArgument : "xvel" "path_get_x(idle_path, 0) - x"
		/// @DnDArgument : "yvel" "path_get_y(idle_path, 0) - y"
		/// @DnDArgument : "maxxmove" "move_speed"
		/// @DnDArgument : "maxymove" "move_speed"
		/// @DnDArgument : "object" "bounds, o_obstacle"
		move_and_collide(path_get_x(idle_path, 0) - x, path_get_y(idle_path, 0) - y, [bounds, o_obstacle],4,0,0,move_speed,move_speed);
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 0B18002D
		/// @DnDParent : 53E211D2
		/// @DnDArgument : "expr" "point_distance(x, y, path_get_x(idle_path, 0), path_get_y(idle_path, 0)) < move_speed"
		if(point_distance(x, y, path_get_x(idle_path, 0), path_get_y(idle_path, 0)) < move_speed){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4DEA3CAF
			/// @DnDParent : 0B18002D
			/// @DnDArgument : "expr" "EnemyStates.IDLE"
			/// @DnDArgument : "var" "state"
			state = EnemyStates.IDLE;
		
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 3FF929CB
			/// @DnDParent : 0B18002D
			/// @DnDArgument : "function" "StartPatroling"
			StartPatroling();}}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 0CDF1296
	/// @DnDParent : 6EEBAD14
	else{	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1B4C6080
		/// @DnDParent : 0CDF1296
		/// @DnDArgument : "expr" "EnemyStates.IDLE"
		/// @DnDArgument : "var" "state"
		state = EnemyStates.IDLE;}}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 6A906377
/// @DnDInput : 2
/// @DnDArgument : "expr" "direction > 90"
/// @DnDArgument : "expr_1" "direction < 270"
if(direction > 90 && direction < 270){	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 0E10D4FF
	/// @DnDParent : 6A906377
	/// @DnDArgument : "value" "-1"
	/// @DnDArgument : "instvar" "15"
	image_xscale = -1;}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 173862C6
else{	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 01D52E07
	/// @DnDParent : 173862C6
	/// @DnDArgument : "value" "1"
	/// @DnDArgument : "instvar" "15"
	image_xscale = 1;}