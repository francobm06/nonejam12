alarm[0] = 2 * room_speed;
action = function()
{
	with(obj_player) state = "stop";
	with(instance_create_layer(0,0,"Dialogue",obj_text))
	{
		dialogue_id = "dialogue4"
	}
	instance_destroy();
}