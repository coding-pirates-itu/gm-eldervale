/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5E35E35F
/// @DnDArgument : "var" "global.keys"
/// @DnDArgument : "op" "2"
if(global.keys > 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 44918202
	/// @DnDInput : 2
	/// @DnDApplyTo : other
	/// @DnDParent : 5E35E35F
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "expr_1" "true"
	/// @DnDArgument : "var" "global.keys"
	/// @DnDArgument : "var_1" "is_open"
	with(other) {
	global.keys += -1;
	is_open = true;
	
	}}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 7DF132DF
/// @DnDApplyTo : other
/// @DnDArgument : "expr" "is_open and !global.in_room_transition"
with(other) var l7DF132DF_0 = is_open and !global.in_room_transition;
if(l7DF132DF_0){	/// @DnDAction : YoYo Games.Audio.Play_Audio
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