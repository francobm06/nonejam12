alarm[0] = 7 * room_speed;
audio_stop_all();
action = function()
{
	with(instance_create_layer(0,0,layer,obj_text))
	{
		dialogue_id = "dialogue10";
	}
}