switch(state)
{
	case("free"):
	{
		hsp = move_x * walksp;
		break;
	}
	case("stop"):
	{
		hsp = 0;
		break;
	}
}

x += hsp;

if (hsp == 0)
{
	sprite_index = spr_player2;
	image_index = 0;
	image_speed = 0;
	footstep = false;
}
else
{
	image_speed = 1;
	sprite_index = spr_player2_walk;
	image_xscale = sign(hsp)*abs(xscale);
	var frame = floor(image_index)
	if (frame == 0) or (frame == 2)
	{
		if (!footstep)
		{
			audio_play_sound(snd_footstep,1,false,,,random_range(0.6,1.4));
			footstep = true;
		}
	}
	else footstep = false;
}
