if (state != "dead")
{
	flash = 4;
	hp -= 1;
	if (hp > 0) audio_play_sound(snd_damage,1,false);
	else audio_play_sound(snd_enemy_dead,1,false);	
	instance_destroy(other);
}