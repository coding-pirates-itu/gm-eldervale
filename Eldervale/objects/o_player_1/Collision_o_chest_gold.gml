/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 38CBF23D
/// @DnDArgument : "expr" "other.is_open"
/// @DnDArgument : "not" "1"
if(!(other.is_open)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3715DB77
	/// @DnDParent : 38CBF23D
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "global.gold"
	global.gold += 1;

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 21AD0E9A
	/// @DnDParent : 38CBF23D
	/// @DnDArgument : "soundid" "snd_chest_open"
	/// @DnDSaveInfo : "soundid" "snd_chest_open"
	audio_play_sound(snd_chest_open, 0, 0, 1.0, undefined, 1.0);

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
		/// @DnDArgument : "speed" "5"
		image_speed = 5;
	}}