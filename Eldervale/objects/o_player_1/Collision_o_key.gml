/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 64DEF82B
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "global.keys"
global.keys += 1;

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 0A088C5C
/// @DnDArgument : "soundid" "snd_key_get"
/// @DnDSaveInfo : "soundid" "snd_key_get"
audio_play_sound(snd_key_get, 0, 0, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 3BB61AE1
/// @DnDApplyTo : other
with(other) instance_destroy();