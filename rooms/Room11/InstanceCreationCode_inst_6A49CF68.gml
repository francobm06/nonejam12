alarm[0] = room_speed * 1.5;
audio_play_sound(snd_stinger,1,false);

global.dialogue = true;
action = function()
{
	with(instance_create_layer(0,0,"Dialogue",obj_text))
	{
		dialogue_id = "dialogue11";
	}
}