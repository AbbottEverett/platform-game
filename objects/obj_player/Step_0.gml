/// @description Player Movement

var key_left, key_left_held, key_right, key_right_held, key_jump, key_jump_held;


key_left = keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"));
key_left_held = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check_pressed(vk_right)|| keyboard_check_pressed(ord("D"));
key_right_held = keyboard_check(vk_right)|| keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("W"));
key_jump_held = keyboard_check(vk_space) || keyboard_check(ord("W"));

// Set Player State
on_ground = place_meeting(x,y+1,obj_wall);

// Calculate Movement //
var move_direction = key_right_held - key_left_held;
/*if (move_direction != 0) {
	horizontal_speed = Approach(horizontal_speed, (walk_speed * move_direction), acceleration_);
} else {
	horizontal_speed = Approach(horizontal_speed, (walk_speed * move_direction), friction_);
}*/
vertical_speed += gravity_;

// Dash Mechanic
if (horizontal_speed == 0) {
	has_walked = false;
}

if ((key_left_held) || (key_right_held)) && (has_walked == false) {
	horizontal_speed = Approach(horizontal_speed, (walk_speed * move_direction), acceleration_);
} else if ((key_left_held) || (key_right_held)) && (has_walked == true) {
	horizontal_speed = Approach(horizontal_speed, (dash_speed * move_direction), acceleration_);
} else {
	has_walked = true;
	horizontal_speed = Approach(horizontal_speed, (walk_speed * move_direction), friction_);
}

// Double jump Mechanic
if (on_ground) {
	jump_count = jump_max;
}

if (jump_count > 0) && (key_jump) {
	jump_count--;
	vertical_speed = -jump_speed_max;
}

// Limit height depending on how long you hold the jump button down
if (vertical_speed < 0) && (!key_jump_held) {
	vertical_speed = max(vertical_speed, -jump_speed_min);
}

// Horizontal Collision
Collision_Check_x(obj_wall);

x += horizontal_speed;

// Vertical Collision
Collision_Check_y(obj_wall);

y += vertical_speed;
