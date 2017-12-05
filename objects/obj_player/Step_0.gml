/// @description Player Movement

var key_left, key_right, key_jump, key_jump_held;

key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right)|| keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("W"));
key_jump_held = keyboard_check(vk_space) || keyboard_check(ord("W"));

// Set Player State
on_ground = place_meeting(x,y+1,obj_wall);

// Calculate Movement //
var move_direction = key_right - key_left;
// Ease in and Out for left-right Movement
if (move_direction != 0) {
	horizontal_speed = Approach(horizontal_speed, (walk_speed * move_direction), acceleration_);
} else {
	horizontal_speed = Approach(horizontal_speed, (walk_speed * move_direction), friction_);
}
vertical_speed += gravity_;

// Jump mechanic
if (on_ground) {
	jump_count = jump_max;
}

if (jump_count > 0) && (key_jump) {
	jump_count--;
	vertical_speed = -jump_speed_max;
}

if (vertical_speed < 0) && (!key_jump_held) {
	vertical_speed = max(vertical_speed, -jump_speed_min);
}

// Horizontal Collision
Collision_Check_x(obj_wall);

x += horizontal_speed;

// Vertical Collision
Collision_Check_y(obj_wall);

y += vertical_speed;
