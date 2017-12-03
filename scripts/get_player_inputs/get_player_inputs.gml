/// @description get_player_inputs();

key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right)|| keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("W"));