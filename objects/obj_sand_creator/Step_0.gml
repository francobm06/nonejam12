if (counter < 0) and (start)
{
	repeat(freq)
	{
		var xx = random_range(0,room_width);
		var yy = random_range(-128,0);
		instance_create_layer(xx,yy,"Instances",obj_sand);
	}
	freq += irandom_range(1,3);
	counter = room_speed - freq;
}