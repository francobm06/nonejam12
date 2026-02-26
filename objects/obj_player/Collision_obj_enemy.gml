if (other.state == "chase")
{
	if (!damage)
	{	
		damage = true;
		alarm[1] = room_speed/2;
		
		flash = 4;
		scr_screenshake(20,15);
		scr_freeze(100);
	}
}