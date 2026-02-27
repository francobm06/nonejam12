if (hp > 0)
{
	var bar_w = 300;
	var bar_h = 25;

	var cx = display_get_gui_width()/2;
	var cy = display_get_gui_height()/2 - display_get_gui_height()/2.5;

	var x1 = cx - bar_w / 2;
	var y1 = cy - bar_h / 3;
	var x2 = x1 + bar_w;
	var y2 = y1 + bar_h;

	draw_set_color(c_maroon);
	draw_rectangle(x1-5,y1-5,x2+5,y2+5,false);

	var hp_w = (hp/hp_max) * bar_w;

	draw_set_color(c_lime);
	draw_rectangle(x1,y1,x1 + hp_w ,y2,false);
}