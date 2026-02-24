switch (image_index)
{
	case(0):
	{
		room_goto(Room_transition1);
		audio_play_sound(snd_start,1,false);
		break;
	}
	case(1):
	{
		audio_play_sound(snd_fullscreen,1,false);
		var _is_fullscreen = window_get_fullscreen();
		window_set_fullscreen(!_is_fullscreen);
	}
}