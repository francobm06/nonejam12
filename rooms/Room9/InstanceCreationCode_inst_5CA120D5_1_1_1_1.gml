audio_stop_all();
audio_play_sound(snd_people,1,false);
alarm[0] = 2 * room_speed;
action = function()
{
	room_goto(Room_transition10);
}