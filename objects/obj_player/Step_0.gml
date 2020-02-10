/// @description PlayerMovement

if (gamepad_axis_value(0, gp_axislv) > 0) {
	y += moveSpeed;
} else if (gamepad_axis_value(0, gp_axislv) < 0) {
	y -= moveSpeed;
}