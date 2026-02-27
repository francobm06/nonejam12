if (!place_meeting(x,y,obj_trigger))
{
	if (!stop) vspeed += 0.3;
}
else
{
	if (!sound) 
	{
		alarm[0] = random_range(1,5); 
		sound = true;
	}
}