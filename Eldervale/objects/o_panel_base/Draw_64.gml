/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 341082EC
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "width_px / sprite_width"
/// @DnDArgument : "yscale" "height_px / sprite_height"
/// @DnDArgument : "sprite" "sprite_index"
draw_sprite_ext(sprite_index, 0, x + 0, y + 0, width_px / sprite_width, height_px / sprite_height, 0, $FFFFFF & $ffffff, 1);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 4B2943BE
/// @DnDArgument : "color" "$FF08332D"
/// @DnDArgument : "alpha" "false"
draw_set_colour($FF08332D & $ffffff);draw_set_alpha(1);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 1480CD2C
/// @DnDArgument : "font" "fnt_stats"
/// @DnDSaveInfo : "font" "fnt_stats"
draw_set_font(fnt_stats);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 1630B8A3
/// @DnDArgument : "halign" "fa_center"
/// @DnDArgument : "valign" "fa_middle"
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 0E996EE6
/// @DnDArgument : "var" "txt"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "function" "get_text"
var txt = get_text();

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 346F8B98
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" "get_text()"
draw_text(x + 0, y + 0, string(get_text()) + "");