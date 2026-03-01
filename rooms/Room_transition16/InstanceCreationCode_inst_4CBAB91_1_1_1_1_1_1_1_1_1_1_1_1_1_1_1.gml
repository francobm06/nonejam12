alarm[0] = room_speed/2;
audio_stop_all();
audio_play_sound(snd_static,1,false);
action = function()
{
	with(instance_create_layer(0,0,layer,obj_text))
	{
		dialogue_id = "dialogue17";
	}
}