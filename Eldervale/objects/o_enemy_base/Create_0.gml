/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 53AC52EC
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)enum EnemyStates {$(13_10)    IDLE,$(13_10)    CHASE,$(13_10)    RETURN$(13_10)}"
/// @description Execute Code
enum EnemyStates {
    IDLE,
    CHASE,
    RETURN
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7CE528E5
/// @DnDArgument : "expr" "layer_tilemap_get_id("Obstacles")"
/// @DnDArgument : "var" "bounds"
bounds = layer_tilemap_get_id("Obstacles");

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 5C6403B2
/// @DnDArgument : "function" "StartPatroling"
StartPatroling();