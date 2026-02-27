alarm[0] = 6 * room_speed;
audio_stop_all();
audio_play_sound(snd_static,1,false);
action = function()
{
	room_goto(Room_transition12);
}