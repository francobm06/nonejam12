draw_self();
timer--;
if (timer > 0)
{
	draw_set_font(f_dialogue);
	draw_text(16,room_height-32,"Pular?");
	draw_set_font(-1);
	if (skip) and (key_skip) game_restart();
}
else skip = false;