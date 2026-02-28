audio_stop_all();
audio_play_sound(snd_engine,1,true,,,5);
audio_play_sound(snd_notes,1,true);
alarm[0] = 4 * room_speed;
action = function()
{
	room_goto(Room_transition11);
}