if (!damage)
{	
	hp -= 2;
	damage = true;
	alarm[1] = room_speed/2;
	
	flash = 4;
	scr_screenshake(40,20);
	scr_freeze(130);
	if (hp > 0) audio_play_sound(snd_hit,1,false);
}