if (started = true)
{

	if (keyboard_check_pressed(vk_space))
	{
		if (letter < string_length(text_grid[# Infos.text, page]))
		{
			letter = string_length(text_grid[# Infos.text, page]);
		}
		else
		{
			alarm[0] = 1;
			letter = 0;
			if (page < ds_grid_height(text_grid)-1) page++;
			else
			{
				scr_transition(c_black,0.1,0.1,target_room);
				instance_destroy();
			}
		}
	}

}