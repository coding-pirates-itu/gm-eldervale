/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 38CBF23D
/// @DnDArgument : "expr" "other.is_open"
/// @DnDArgument : "not" "1"
if(!(other.is_open)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3715DB77
	/// @DnDInput : 2
	/// @DnDParent : 38CBF23D
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "expr_1" "other"
	/// @DnDArgument : "var" "global.gold"
	/// @DnDArgument : "var_1" "to_destroy"
	global.gold += 1;
	to_destroy = other;

	/// @DnDAction : YoYo Games.Common.Apply_To
	/// @DnDVersion : 1
	/// @DnDHash : 5FAC00C2
	/// @DnDApplyTo : other
	/// @DnDParent : 38CBF23D
	with(other) {
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 20704135
		/// @DnDParent : 5FAC00C2
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "is_open"
		is_open = true;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 2D980A8F
		/// @DnDParent : 5FAC00C2
		image_speed = 1;
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 7A2CDFD4
		/// @DnDComment : Alarm 0 is for destroying an entity with a delay
		/// @DnDParent : 5FAC00C2
		/// @DnDArgument : "steps" "2"
		alarm_set(0, 2);
	}}