if (start == false) 
{
	scr_texts();
	start = true;
	alarm[0] = 1;
	alarm[1] = 4;
}

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

if (h == 0) h = string_height(text_grid[# Infos.Text, page]);

if (keyboard_check_pressed(vk_space))
{
	if (char < string_length(text_grid[# Infos.Text, page]))
	{
		char = string_length(text_grid[# Infos.Text, page]);
	}
	else
	{
		alarm[0] = 1;
		alarm[1] = 4;
		char = 0;
		
		if (page < ds_grid_height(text_grid) - 1)
		{
			page += 1;
		}
		else
		{
			instance_destroy();
			global.dialogue = false;
		}
	}
}