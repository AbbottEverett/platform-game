/// @description Initialize Player Variables

horizontal_speed = 0;
walk_speed = 1.5;
dash_speed = 2.5;
acceleration_ = 0.25;
friction_ = 0.1;

vertical_speed = 0;
gravity_ = 0.15;
jump_speed_max = 4.5;
jump_speed_min = jump_speed_max * 0.33;

on_ground = false;
has_walked = false;
jump_count = 0;
jump_max = 2;

// Gamepad variables
gp_in_control = false;
deadzone = 0.2;
