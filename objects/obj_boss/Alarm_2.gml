repeat(irandom_range(1,3))
{
	with(instance_create_depth(x+random_range(0,24)*-image_xscale,y+random_range(-8,8),depth-1,obj_smoke_part))
	{
		vspeed = random_range(-3,-5);
		hspeed = random_range(2,4) * -image_xscale;
		image_index = irandom_range(0,image_number-1);
	}
}
alarm[2] = 5;