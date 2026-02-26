if (state != "dead")
{
	flash = 4;
	hp -= 1;
	audio_play_sound(snd_damage,1,false);
}
instance_destroy(other);