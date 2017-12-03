/// @description collision_check_x(object) checks if
/// @arg thing to collide with

if (place_meeting(x+horizontal_speed, y, argument0)) {
  while (!place_meeting(x + sign(horizontal_speed), y, argument0)) {
		x += sign(horizontal_speed);
	}
	horizontal_speed = 0;
}
