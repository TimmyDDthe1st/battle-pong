/// @description Movement,Fireing

//L stick movement
if gamepad_axis_value(0,gp_axislv) >= -gamePadDeadZone && gamepad_axis_value(0,gp_axislv) <= gamePadDeadZone
&& gamepad_axis_value(0,gp_axislh) >= -gamePadDeadZone && gamepad_axis_value(0,gp_axislh) <= gamePadDeadZone
{
	motion_set(0, 0);
}
else
{
	hlaxis = gamepad_axis_value(0, gp_axislh);
	vlaxis = gamepad_axis_value(0, gp_axislv);
	direction = point_direction(0, 0, hlaxis, vlaxis);
	move_contact_solid(direction,moveSpeed);
}


///Fire
if gamepad_axis_value(0, gp_axisrv) >= -gamePadDeadZone && gamepad_axis_value(0, gp_axisrv) <= gamePadDeadZone
&& gamepad_axis_value(0, gp_axisrh) >= -gamePadDeadZone && gamepad_axis_value(0, gp_axisrh) <= gamePadDeadZone
{
	if(pulledBack) {
		scr_playerShoot(xx, yy, dir)
		balls -= 1;
		pulledBack = false;
	}
	
} else {
	if(balls > 0){
		hraxis = gamepad_axis_value(0, gp_axisrh);
		vraxis = gamepad_axis_value(0, gp_axisrv);
	
		dir = point_direction(0, 0, -hraxis, -vraxis)
	
		xx = x + lengthdir_x(100, dir);
		yy = y + lengthdir_y(100, dir);
	
		pulledBack = true;
	}
}

show_debug_message(balls);
