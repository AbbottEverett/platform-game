/// @description Set the Player Sprite

// Animation
if (!on_ground) {
	sprite_index = spr_player_air;
	image_speed = 0.75;
}

if (on_ground) {
	if (horizontal_speed == 0) {
		image_speed = 0;
		sprite_index = spr_player;
	}
	if (horizontal_speed != 0) {
		image_speed = 0.5;
		sprite_index = spr_player_run;
	}
}

if (horizontal_speed != 0) {
	image_xscale = sign(horizontal_speed);
}

draw_self();