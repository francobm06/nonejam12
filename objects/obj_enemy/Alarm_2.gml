with(instance_create_depth(x+random_range(0,16)*-image_xscale,y-random_range(8,16),depth-1,obj_smoke_part))
{
	vspeed = random_range(-1,-2);
	hspeed = other.hsp;
	image_index = irandom_range(0,image_number-1);
}
alarm[2] = room_speed/3;