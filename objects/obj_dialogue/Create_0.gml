enum Infos
{
	color,
	text
}

text_grid = ds_grid_create(2,0);
target_room = noone;

page = 0;
letter = 0;

started = false;
alarm[1] = 30;

color = c_white;