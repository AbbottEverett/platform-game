/// @description Update Camera

// Update destination
if (instance_exists(obj_to_follow)) {
	xTo = obj_to_follow.x;
	yTo = obj_to_follow.y;
}

// Update camera object position

x += round((xTo - x) / cam_speed);
y += round((yTo - y) / cam_speed);

// Force camera to bounds of room
x = clamp(x, view_width_half, room_width-view_width_half);
y = clamp(y, view_height_half, room_height-view_height_half);

// Update viewport position
camera_set_view_pos(camera, x-view_width_half, y-view_height_half);

if (layer_exists("Mountains")) {
	layer_x("Mountains", round(x/2));
}

if (layer_exists("Trees")) {
	layer_x("Trees", round(x/4));
}

display_reset(2, true);