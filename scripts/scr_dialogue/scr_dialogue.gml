function scr_dialogue(_follow,_text,_background,_font)
{
	with(instance_create_layer(0,0,"Dialogue",obj_text))
	{
		follow = _follow;
		text = _text;
		background = _background;
		font = _font;
	}
}