/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 634CB62A
/// @DnDComment : Move back
/// @DnDInput : 2
/// @DnDArgument : "expr" "xprevious"
/// @DnDArgument : "expr_1" "yprevious"
/// @DnDArgument : "var" "x"
/// @DnDArgument : "var_1" "y"
x = xprevious;
y = yprevious;

/// @DnDAction : YoYo Games.Movement.move_and_collide
/// @DnDVersion : 1
/// @DnDHash : 75C48D0A
/// @DnDComment : Now move forward until we meet the object
/// @DnDArgument : "xvel" "hspeed"
/// @DnDArgument : "num_iterations" "move_speed"
/// @DnDArgument : "object" "o_house"
/// @DnDSaveInfo : "object" "o_house"
move_and_collide(hspeed, 0, o_house,move_speed,0,0,-1,-1);

/// @DnDAction : YoYo Games.Movement.move_and_collide
/// @DnDVersion : 1
/// @DnDHash : 446F7898
/// @DnDArgument : "yvel" "vspeed"
/// @DnDArgument : "num_iterations" "move_speed"
/// @DnDArgument : "object" "o_house"
/// @DnDSaveInfo : "object" "o_house"
move_and_collide(0, vspeed, o_house,move_speed,0,0,-1,-1);