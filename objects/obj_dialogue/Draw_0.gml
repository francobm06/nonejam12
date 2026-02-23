if (started = true)
{
	gui_w = (camera_get_view_width(view_camera[0])/2)+camera_get_view_x(view_camera[0]);
	gui_h = (camera_get_view_height(view_camera[0])/2)+camera_get_view_y(view_camera[0]);


	//gui_w/2,gui_h/2,gui_w+16,gui_h+16
	draw_sprite_stretched(spr_dialogue_box,0,gui_w/2+128,gui_h/2+128,256*3,256)
	
	draw_set_font(f_dialogue);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_color(text_grid[# Infos.color, page]);

	var _text = string_copy(text_grid[# Infos.text, page], 0, letter);

	draw_text_ext(gui_w,gui_h,_text,24,800);

	draw_set_color(-1);
	if (letter >= string_length(text_grid[# Infos.text, page])+10) draw_sprite(spr_spacebar,0,gui_w,gui_h+gui_h/8);

	draw_set_halign(-1);
	draw_set_font(-1);
	draw_set_valign(-1);

}