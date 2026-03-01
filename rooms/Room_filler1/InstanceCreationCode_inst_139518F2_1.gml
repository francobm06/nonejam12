contact = true;
action = function()
{
	with(obj_player)
	{
		state = "stop";
		hsp = 2;
		hsp_real = 2;
	}
	with(instance_create_layer(0,0,"Dialogue",obj_text))
	{
		dialogue_id = "dialogue2";
	}
	instance_destroy();
}