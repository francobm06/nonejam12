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
			if (room == Room_transition2) room_goto(Room1);
			if (room == Room_transition3)
			{
				with(instance_create_layer(0,0,layer,obj_trigger))
				{
					alarm[0] = room_speed;
					action = function()
					{
						audio_stop_all(); 
						audio_play_sound(snd_engine_stop,1,false);
						scr_transition(c_black,0.1,0.1,Room2);
					}
				}
			}
			if (room == Room_transition4) 
			{
				with(instance_create_layer(0,0,layer,obj_trigger))
				{
					alarm[0] = 2 * room_speed;
					action = function()
					{
						audio_stop_all(); 
						scr_transition(c_black,1,1,Room4);
					}
				}
			}
		}
	}
}

if (room == Room_transition5)
{
	if (char > string_length(text_grid[# Infos.Text, page])) and (page >= ds_grid_height(text_grid) - 1) room_goto(Room5);
}