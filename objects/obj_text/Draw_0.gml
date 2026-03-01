if (start)
{
	var halfw = string_width(text_grid[# Infos.Text, page])/2;
	
	if (text_grid[# Infos.Background, page] == true) // É balão de fala
	{
		draw_set_color(c_black);
		draw_roundrect_ext(x-halfw-border,y-h-(border*2),x+halfw+border,y-border,15,15,false);
		draw_sprite(spr_marker,0,x,y-border);
	}
	else 
	{
		if (char >= string_length(text_grid[# Infos.Text, page])+20) draw_sprite(spr_spacebar,0,x,yy+24);
		if (char >= string_length(text_grid[# Infos.Text, page])+240) draw_text(x-48,room_height/1.5,"(espaço)");
	}

	var _text = string_copy(text_grid[# Infos.Text, page], 0, char);

	draw_set_font(text_grid[# Infos.Font, page]);
	draw_set_color(text_grid[# Infos.Color, page]);
	draw_set_halign(fa_center);
	if (text_grid[# Infos.Follow, page] != noone) draw_set_valign(fa_top);
	else draw_set_valign(fa_top);
	
	draw_text(x, y-h-border, _text);
	
	draw_set_color(-1);
	draw_set_halign(-1);
	draw_set_valign(-1);

}