/// @description Update Camera

// Update destination
if (instance_exists(obj_to_follow)) {
	xTo = obj_to_follow.x;
	yTo = obj_to_follow.y;
}

// Update camera object position
if (x > xTo+buff) {
	x = xTo+buff;
}
if (x < xTo-buff) {
	x = xTo-buff;
}
y = yTo;



// Force camera to bounds of room
x = clamp(x, view_width_half, room_width-view_width_half);
y = clamp(y, view_height_half, room_height-view_height_half);

// Update viewport position
camera_set_view_pos(camera, x-view_width_half, y-view_height_half);