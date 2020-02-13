/// @description Movement,Fireing

scr_playerMovement(player);

///Fire
if gamepad_axis_value(0, gp_axisrv) >= -gamePadDeadZone && gamepad_axis_value(0, gp_axisrv) <= gamePadDeadZone
&& gamepad_axis_value(0, gp_axisrh) >= -gamePadDeadZone && gamepad_axis_value(0, gp_axisrh) <= gamePadDeadZone
{
	image_angle = direction;
	speed = 0;
	
	if(pulledBack && balls > 0) {
		scr_playerShoot(xx, yy, dir)
		balls -= 1;
		pulledBack = false;
	}
	
} else {
	hraxis = gamepad_axis_value(0, gp_axisrh);
	vraxis = gamepad_axis_value(0, gp_axisrv);
	
	dir = point_direction(0, 0, -hraxis, -vraxis)
	
	xx = x + lengthdir_x(100, direction);
	yy = y + lengthdir_y(100, direction);
	
	pulledBack = true;
}

show_debug_message(balls);
