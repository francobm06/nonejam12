var halfw = string_width(text)/2;

if (background)
{
	draw_set_color(c_black);
	draw_roundrect_ext(x-halfw-border,y-h-(border*2),x+halfw+border,y,15,15,false);
	draw_sprite(spr_marker,0,x,y);
}

draw_set_color(c_white);
draw_set_font(font);
draw_set_halign(fa_center);
draw_set_valign(fa_top);

draw_text(x,y-h-border,text_current);

draw_set_halign(-1);
draw_set_valign(-1);