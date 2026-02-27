if (!damage)
{	
	instance_destroy(other);
	hp--;
	damage = true;
	alarm[1] = room_speed/2;
	
	flash = 4;
	scr_screenshake(20,15);
	scr_freeze(100);
	if (hp > 0) audio_play_sound(snd_hit,1,false);
}