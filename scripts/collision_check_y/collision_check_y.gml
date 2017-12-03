/// @description collision_check_x(object) checks if
/// @arg thing to collide with

if (place_meeting(x,y+vertical_speed,argument0)) {
	while (!place_meeting(x, y + sign(vertical_speed), argument0)) {
		y += sign(vertical_speed);
	}
	vertical_speed = 0;
}
