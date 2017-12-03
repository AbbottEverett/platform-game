/// @description Update Camera

// Update destination
if (instance_exists(obj_to_follow)) {
	xTo = obj_to_follow.x;
	yTo = obj_to_follow.y;
}

// Update camera object position
x += (xTo - x) / speed_factor;
y += (yTo - y) / speed_factor;

// Force camera to bounds of room
x = clamp(x, view_width_half+buff, room_width-view_width_half-buff);
y = clamp(y, view_height_half+buff, room_height-view_height_half-buff);

// Update viewport position
camera_set_view_pos(camera, x-view_width_half, y-view_height_half);