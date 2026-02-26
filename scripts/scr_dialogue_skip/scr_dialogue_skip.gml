function scr_dialogue_skip()
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