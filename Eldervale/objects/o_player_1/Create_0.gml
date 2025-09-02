/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4F10C678
/// @DnDInput : 7
/// @DnDArgument : "expr" "2"
/// @DnDArgument : "expr_3" "x"
/// @DnDArgument : "expr_4" "y"
/// @DnDArgument : "expr_5" "layer_tilemap_get_id("Obstacles")"
/// @DnDArgument : "expr_6" "false"
/// @DnDArgument : "var" "move_speed"
/// @DnDArgument : "var_1" "global.keys"
/// @DnDArgument : "var_2" "global.gold"
/// @DnDArgument : "var_3" "target_x"
/// @DnDArgument : "var_4" "target_y"
/// @DnDArgument : "var_5" "bounds"
/// @DnDArgument : "var_6" "move_to_mouse"
move_speed = 2;
global.keys = 0;
global.gold = 0;
target_x = x;
target_y = y;
bounds = layer_tilemap_get_id("Obstacles");
move_to_mouse = false;