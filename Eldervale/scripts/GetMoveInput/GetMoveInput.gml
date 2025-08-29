/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 0288C018
/// @DnDComment : 
/// @DnDArgument : "funcName" "GetMoveInput"
/// @DnDArgument : "arg" "move_speed"
function GetMoveInput(move_speed) {	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 4AB23999
	/// @DnDInput : 2
	/// @DnDParent : 0288C018
	/// @DnDArgument : "instvar" "4"
	/// @DnDArgument : "instvar_1" "5"
	hspeed = 0;
	vspeed = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2C0A6841
	/// @DnDParent : 0288C018
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "is_moving"
	is_moving = false;

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 45C4121D
	/// @DnDParent : 0288C018
	/// @DnDArgument : "key" "vk_left"
	var l45C4121D_0;l45C4121D_0 = keyboard_check(vk_left);if (l45C4121D_0){	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 15E4A909
		/// @DnDParent : 45C4121D
		/// @DnDArgument : "value" "-move_speed"
		/// @DnDArgument : "instvar" "4"
		hspeed = -move_speed;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 74AD1DB7
		/// @DnDInput : 2
		/// @DnDParent : 45C4121D
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "expr_1" "true"
		/// @DnDArgument : "var" "facing"
		/// @DnDArgument : "var_1" "is_moving"
		facing = -1;
		is_moving = true;}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 1D0C20F7
	/// @DnDParent : 0288C018
	/// @DnDArgument : "key" "vk_right"
	var l1D0C20F7_0;l1D0C20F7_0 = keyboard_check(vk_right);if (l1D0C20F7_0){	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 2D8826DD
		/// @DnDParent : 1D0C20F7
		/// @DnDArgument : "value" "move_speed"
		/// @DnDArgument : "instvar" "4"
		hspeed = move_speed;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 13958660
		/// @DnDInput : 2
		/// @DnDParent : 1D0C20F7
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_1" "true"
		/// @DnDArgument : "var" "facing"
		/// @DnDArgument : "var_1" "is_moving"
		facing = 1;
		is_moving = true;}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 02067DFF
	/// @DnDParent : 0288C018
	/// @DnDArgument : "key" "vk_up"
	var l02067DFF_0;l02067DFF_0 = keyboard_check(vk_up);if (l02067DFF_0){	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 621CF229
		/// @DnDParent : 02067DFF
		/// @DnDArgument : "value" "-move_speed"
		/// @DnDArgument : "instvar" "5"
		vspeed = -move_speed;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5F667350
		/// @DnDParent : 02067DFF
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "is_moving"
		is_moving = true;}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 10A2A6DC
	/// @DnDParent : 0288C018
	/// @DnDArgument : "key" "vk_down"
	var l10A2A6DC_0;l10A2A6DC_0 = keyboard_check(vk_down);if (l10A2A6DC_0){	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 04A946A2
		/// @DnDParent : 10A2A6DC
		/// @DnDArgument : "value" "move_speed"
		/// @DnDArgument : "instvar" "5"
		vspeed = move_speed;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 55445773
		/// @DnDParent : 10A2A6DC
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "is_moving"
		is_moving = true;}}