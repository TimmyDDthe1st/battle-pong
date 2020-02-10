/// @description AI

if(y != global.player.y) {
	if global.player.y < y {
		y -= 2;
	} else if global.player.y > y {
		y += 2;
	}
} else {
	scr_aiShoot(x, y, 180);
}

