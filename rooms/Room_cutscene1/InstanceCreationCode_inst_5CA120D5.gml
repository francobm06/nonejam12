audio_play_sound(snd_wind,1,true);
alarm[0] = 8 * room_speed;
action = function()
{
	room_goto(Room_transition2);
}