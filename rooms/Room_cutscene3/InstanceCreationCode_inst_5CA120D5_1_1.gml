audio_play_sound(snd_birds,1,true);
audio_play_sound(snd_traffic,1,true);
alarm[0] = 5 * room_speed;
action = function()
{
	room_goto(Room_transition7);
}