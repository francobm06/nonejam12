if (state == 0)
{
	x = lerp(x,obj_player.x+48,0.2);
	y = lerp(y,obj_player.y,0.08);
	ypos = lerp(ypos,obj_player.y,0.08);
}
if (state == 1)
{
	x = lerp(x,obj_player.x+48,0.2);
	y = lerp(y,obj_player.y,0.02);
	if (!shoot)
	{
		alarm[1] = room_speed/2;
		shoot = true;
	}
}