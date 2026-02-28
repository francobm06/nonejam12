alarm[0] = 3 * room_speed;
action = function()
{
	with(instance_create_layer(0,0,"Dialogue",obj_text))
	{
		dialogue_id = "dialogue14";
	}
	instance_destroy();
}