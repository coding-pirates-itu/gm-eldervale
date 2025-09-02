/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 0288C018
/// @DnDComment : 
/// @DnDArgument : "funcName" "GetMoveInput"
function GetMoveInput() {	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 2A3DACF1
	/// @DnDParent : 0288C018
	/// @DnDArgument : "expr" "move_to_mouse"
	/// @DnDArgument : "not" "1"
	if(!(move_to_mouse)){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2C0A6841
		/// @DnDInput : 3
		/// @DnDParent : 2A3DACF1
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "expr_1" "x"
		/// @DnDArgument : "expr_2" "y"
		/// @DnDArgument : "var" "is_moving"
		/// @DnDArgument : "var_1" "target_x"
		/// @DnDArgument : "var_2" "target_y"
		is_moving = false;
		target_x = x;
		target_y = y;}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 45C4121D
	/// @DnDParent : 0288C018
	/// @DnDArgument : "key" "vk_left"
	var l45C4121D_0;l45C4121D_0 = keyboard_check(vk_left);if (l45C4121D_0){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 74AD1DB7
		/// @DnDInput : 3
		/// @DnDParent : 45C4121D
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "expr_1" "-move_speed"
		/// @DnDArgument : "expr_relative_1" "1"
		/// @DnDArgument : "expr_2" "false"
		/// @DnDArgument : "var" "is_moving"
		/// @DnDArgument : "var_1" "target_x"
		/// @DnDArgument : "var_2" "move_to_mouse"
		is_moving = true;
		target_x += -move_speed;
		move_to_mouse = false;}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 1D0C20F7
	/// @DnDParent : 0288C018
	/// @DnDArgument : "key" "vk_right"
	var l1D0C20F7_0;l1D0C20F7_0 = keyboard_check(vk_right);if (l1D0C20F7_0){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 13958660
		/// @DnDInput : 3
		/// @DnDParent : 1D0C20F7
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "expr_1" "move_speed"
		/// @DnDArgument : "expr_relative_1" "1"
		/// @DnDArgument : "expr_2" "false"
		/// @DnDArgument : "var" "is_moving"
		/// @DnDArgument : "var_1" "target_x"
		/// @DnDArgument : "var_2" "move_to_mouse"
		is_moving = true;
		target_x += move_speed;
		move_to_mouse = false;}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 02067DFF
	/// @DnDParent : 0288C018
	/// @DnDArgument : "key" "vk_up"
	var l02067DFF_0;l02067DFF_0 = keyboard_check(vk_up);if (l02067DFF_0){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5F667350
		/// @DnDInput : 3
		/// @DnDParent : 02067DFF
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "expr_1" "-move_speed"
		/// @DnDArgument : "expr_relative_1" "1"
		/// @DnDArgument : "expr_2" "false"
		/// @DnDArgument : "var" "is_moving"
		/// @DnDArgument : "var_1" "target_y"
		/// @DnDArgument : "var_2" "move_to_mouse"
		is_moving = true;
		target_y += -move_speed;
		move_to_mouse = false;}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 10A2A6DC
	/// @DnDParent : 0288C018
	/// @DnDArgument : "key" "vk_down"
	var l10A2A6DC_0;l10A2A6DC_0 = keyboard_check(vk_down);if (l10A2A6DC_0){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 55445773
		/// @DnDInput : 3
		/// @DnDParent : 10A2A6DC
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "expr_1" "move_speed"
		/// @DnDArgument : "expr_relative_1" "1"
		/// @DnDArgument : "expr_2" "false"
		/// @DnDArgument : "var" "is_moving"
		/// @DnDArgument : "var_1" "target_y"
		/// @DnDArgument : "var_2" "move_to_mouse"
		is_moving = true;
		target_y += move_speed;
		move_to_mouse = false;}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 50B27CC0
	/// @DnDParent : 0288C018
	/// @DnDArgument : "expr" "target_x < x"
	if(target_x < x){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0271C1E6
		/// @DnDParent : 50B27CC0
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "var" "facing"
		facing = -1;}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 7929565E
	/// @DnDParent : 0288C018
	/// @DnDArgument : "expr" "target_x > x"
	if(target_x > x){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 12A0F93E
		/// @DnDParent : 7929565E
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "facing"
		facing = 1;}}