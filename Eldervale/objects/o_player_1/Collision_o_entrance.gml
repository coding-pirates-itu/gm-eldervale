/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 199A3DB8
/// @DnDInput : 2
/// @DnDArgument : "expr" "other.is_open"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "expr_1" "global.keys > 0"
if(!(other.is_open) && global.keys > 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 44918202
	/// @DnDInput : 2
	/// @DnDParent : 199A3DB8
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "expr_1" "true"
	/// @DnDArgument : "var" "global.keys"
	/// @DnDArgument : "var_1" "other.is_open"
	global.keys += -1;
	other.is_open = true;}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 7DF132DF
/// @DnDInput : 2
/// @DnDArgument : "expr" "other.is_open"
/// @DnDArgument : "expr_1" "global.in_room_transition"
/// @DnDArgument : "not_1" "1"
if(other.is_open && !(global.in_room_transition)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 70C968D9
	/// @DnDParent : 7DF132DF
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "can_move"
	can_move = false;

	/// @DnDAction : YoYo Games.Particles.Effect
	/// @DnDVersion : 1
	/// @DnDHash : 3856591F
	/// @DnDParent : 7DF132DF
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "where" "1"
	effect_create_above(1, x + 0, y + 0, 0, $FFFFFF & $ffffff);

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 12FFC7AF
	/// @DnDParent : 7DF132DF
	/// @DnDArgument : "soundid" "snd_down_the_stairs"
	/// @DnDSaveInfo : "soundid" "snd_down_the_stairs"
	audio_play_sound(snd_down_the_stairs, 0, 0, 1.0, undefined, 1.0);

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 2832C604
	/// @DnDParent : 7DF132DF
	/// @DnDArgument : "function" "StartTransition"
	/// @DnDArgument : "arg" "other.to_room, seq_fade_out, seq_fade_in"
	StartTransition(other.to_room, seq_fade_out, seq_fade_in);}