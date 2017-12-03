/// @description Player Movement

var key_left, key_right, key_jump, on_ground;

key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right)|| keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("W"));

// Set Player State
on_ground = place_meeting(x,y+1,obj_wall);

// Calculate Movement //
var move_direction = key_right - key_left;
horizontal_speed = Approach(horizontal_speed, (walk_speed * move_direction), acceleration_);
vertical_speed += gravity_;

if (on_ground) && (key_jump) {
	vertical_speed = -jump_speed;
}

// Horizontal Collision
Collision_Check_x(obj_wall);

x += horizontal_speed;

// Vertical Collision
Collision_Check_y(obj_wall);

y += vertical_speed;
