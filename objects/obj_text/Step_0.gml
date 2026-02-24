letters += spd;
text_current = string_copy(text,1,floor(letters));

draw_set_font(font);
if (h == 0) h = string_height(text);
w = string_width(text_current);


if (keyboard_check_pressed(vk_space))
{
	if (letters >= length)
	{
		instance_destroy();
	}
	else letters = string_length(text);
}

if (follow != noone)
{
	x += (follow.x - x);
	y += (follow.y - y) - 32;
}
else
{
	x = room_width/2;
	y = room_height/2;
}