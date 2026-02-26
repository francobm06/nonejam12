if (start == false) 
{
	scr_texts();
	start = true;
	alarm[0] = 1;
	alarm[1] = 4;
}

t += 0.4;
yy = y + sin(t)*1.5;

if (text_grid[# Infos.Follow, page] != noone)
{
	x = text_grid[# Infos.Follow, page].x;
	y = text_grid[# Infos.Follow, page].y - 32;
}
else
{
	x = room_width/2;
	y = room_height/2;
}

if (h == 0) h = 21;//string_height(text_grid[# Infos.Text, page]);

if (keyboard_check_pressed(vk_space))
{
	if (char < string_length(text_grid[# Infos.Text, page])) char = string_length(text_grid[# Infos.Text, page]);
	else scr_dialogue_skip();
}

if (room == Room_transition5)
{
	if (char > string_length(text_grid[# Infos.Text, page])) and (page >= ds_grid_height(text_grid) - 1) room_goto(Room5);
}