if (state != "dash")
{
	var c = choose(0,1)
	if (c == 0)
	{
		instance_create_layer(x,y,layer,obj_boss_gun);
	}
	else
	{
		state = "dash";
		alarm[4] = 3 * room_speed; //ataque
	}
}
else
{
	state = "chase";
	alarm[4] = 3 * room_speed;
}