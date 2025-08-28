/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 28EA1490
draw_self();

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 26D76E42
/// @DnDArgument : "color" "$FF343434"
/// @DnDArgument : "alpha" "false"
draw_set_colour($FF343434 & $ffffff);draw_set_alpha(1);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 51EBD85B
/// @DnDArgument : "font" "fnt_stats"
/// @DnDSaveInfo : "font" "fnt_stats"
draw_set_font(fnt_stats);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 634912EE
/// @DnDArgument : "halign" "fa_center"
/// @DnDArgument : "valign" "fa_middle"
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 3A4513F8
/// @DnDArgument : "x" "sprite_width / 2"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "sprite_height / 2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""Gold: ""
/// @DnDArgument : "var" "global.gold"
draw_text(x + sprite_width / 2, y + sprite_height / 2, string("Gold: ") + string(global.gold));