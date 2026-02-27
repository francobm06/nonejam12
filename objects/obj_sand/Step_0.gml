if (!place_meeting(x,y,obj_trigger))
{
	if (!stop) vspeed += 0.3;
}
else
{
	if (alarm[0] == -1) alarm[0] = random_range(1,5);
}