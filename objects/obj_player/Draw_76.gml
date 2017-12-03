/// @description Set the Player Sprite

// Animation
if (!on_ground) {
	image_speed = 1;
	sprite_index = spr_player_air;
} else {
	image_speed = 1;
	if (horizontal_speed == 0) {
		sprite_index = spr_player;
	} else {
		sprite_index = spr_player_run;
	}
}

if (horizontal_speed != 0) {
	image_xscale = sign(horizontal_speed);
}