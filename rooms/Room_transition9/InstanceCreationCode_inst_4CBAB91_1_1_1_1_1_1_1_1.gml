alarm[0] = room_speed;
audio_stop_all();
audio_play_sound(snd_bgm1,1,true);
action = function()
{
	with(instance_create_layer(0,0,layer,obj_text))
	{
		dialogue_id = "dialogue8";
	}
}