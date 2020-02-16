/// @description AI

if(y != global.player.y) {
	if global.player.y < y {
		y -= 2;
	} else if global.player.y > y {
		y += 2;
	}
} else {
	if(balls > 0){
		scr_aiShoot(x - 10, y, 180);
		balls -= 1;
	}
}

if(hit){
	if(speed > 0) {
		speed -= 0.20;
	} else {
		speed = 0;
		hit = false;
	}
}
