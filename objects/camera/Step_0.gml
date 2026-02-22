if (instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;
}

x += (xTo - x) / 5;
y += (yTo - y) / 5;

x = clamp(x, view_w_half, room_width - view_w_half);
y = clamp(y, view_h_half, room_height - view_h_half);

camera_set_view_pos(cam,x - view_w_half, y - view_h_half);

//Parallax
// x=estático
//if (layer_exists("Assets_1")) layer_x("Assets_1",x/1);
//if (layer_exists("Assets_2")) layer_x("Assets_2",x/8);