repeat(irandom_range(1,freq))
{
	var xx = random_range(0,room_width);
	var yy = random_range(-8,0);
	instance_create_layer(xx,yy,"Instances",obj_sand);
}
freq += irandom_range(1,3);

counter = lerp(counter,1,0.1);
alarm[2] = counter;


start = true;