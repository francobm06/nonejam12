if (state != "dead")
{
	flash = 4;
	if (abs(hsp) > 3) hsp = hsp/3;
	if (abs(hsp_real) > 3) hsp_real = hsp_real/3;
	audio_play_sound(snd_damage,1,false);
	instance_destroy(other);
}