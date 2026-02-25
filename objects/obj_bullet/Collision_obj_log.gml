instance_destroy();

repeat(irandom_range(7,10))
{
	with(instance_create_layer(x,y,layer,obj_gun_part))
	{
		speed = 3;
		direction = other.direction + 180 + random_range(-45,45);
		sprite_index = spr_log_part;
		image_angle = direction;
		image_index = irandom_range(0,image_number-1);
	}
}