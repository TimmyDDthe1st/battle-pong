if (gamepad_axis_value(0, gp_axislv) > gamePadDeadZone) {
	argument0.y += moveSpeed;
} else if (gamepad_axis_value(0, gp_axislv) < -gamePadDeadZone) {
	argument0.y -= moveSpeed;
}

if (gamepad_axis_value(0, gp_axislh) > gamePadDeadZone) {
	argument0.x += moveSpeed;
} else if (gamepad_axis_value(0, gp_axislh) < -gamePadDeadZone) {
	argument0.x -= moveSpeed;
}