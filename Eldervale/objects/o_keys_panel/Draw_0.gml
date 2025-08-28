/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 0488E463
draw_self();

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 0357FBC4
/// @DnDArgument : "color" "$FF08332D"
/// @DnDArgument : "alpha" "false"
draw_set_colour($FF08332D & $ffffff);draw_set_alpha(1);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 7CA05D4C
/// @DnDArgument : "font" "fnt_stats"
/// @DnDSaveInfo : "font" "fnt_stats"
draw_set_font(fnt_stats);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 64FE923C
/// @DnDArgument : "halign" "fa_center"
/// @DnDArgument : "valign" "fa_middle"
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 1D1477C6
/// @DnDArgument : "x" "sprite_width / 2"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "sprite_height / 2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""Keys: ""
/// @DnDArgument : "var" "global.keys"
draw_text(x + sprite_width / 2, y + sprite_height / 2, string("Keys: ") + string(global.keys));