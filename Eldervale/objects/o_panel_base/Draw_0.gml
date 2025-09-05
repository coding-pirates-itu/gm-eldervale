/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 0FBC5484
draw_self();

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 73447717
/// @DnDArgument : "color" "$FF08332D"
draw_set_colour($FF08332D & $ffffff);
var l73447717_0=($FF08332D >> 24);
draw_set_alpha(l73447717_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 0AACA2E4
/// @DnDArgument : "font" "fnt_stats"
/// @DnDSaveInfo : "font" "fnt_stats"
draw_set_font(fnt_stats);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 56A6E004
/// @DnDArgument : "halign" "fa_center"
/// @DnDArgument : "valign" "fa_middle"
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 08DFEDBA
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" "get_text()"
draw_text(x + 0, y + 0, string(get_text()) + "");