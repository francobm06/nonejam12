contact = true;
action = function()
{
	with(obj_player)
	{
		state = "stop";
		hsp = 2*image_xscale;
		hsp_real = 2*image_xscale;
	}
	with(instance_create_layer(0,0,"Dialogue",obj_text))
	{
		dialogue_id = "dialogue5";
	}
	instance_destroy();
}