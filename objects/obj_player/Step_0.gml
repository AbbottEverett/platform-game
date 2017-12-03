/// @description Manage Player State

var key_left, key_right, key_jump, on_ground;

key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right)|| keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("W"));

// Set Player State
on_ground = place_meeting(x,y+1,obj_wall);

// Calculate Movement //
// Sets left true/false to -1 or 0
key_left = -key_left;
horizontal_speed = (key_left + key_right) * walk_speed;
vertical_speed += _gravity;

if (on_ground) && (key_jump) {
	vertical_speed = -jump_speed;
}

// Horizontal Collision
collision_check_x(obj_wall);

x += horizontal_speed;

// Vertical Collision
collision_check_y(obj_wall);

y += vertical_speed;
