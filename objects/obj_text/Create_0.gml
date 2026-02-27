enum Infos
{
	Text,
	Color,
	Follow,
	Background,
	Font
}

dialogue_id = "";
text_grid = ds_grid_create(5, 0);

h = 0;
border = 10;

page = 0;

global.dialogue = true;

char = 0;

start = false;

t = 0;
if (text_grid[# Infos.Background, page] == false) cursor_sprite = noone;