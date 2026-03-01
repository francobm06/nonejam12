if (y<-32) game_restart();

sound -= 0.001;
audio_sound_gain(snd_engine,sound,0);

key_skip = keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_escape);
if (key_skip)
{
	timer = 60;
	alarm[1] = 1;
}