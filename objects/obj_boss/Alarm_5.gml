if (explosion < 3)
{
	explosion += 1;
	instance_create_depth(x,y,depth-1,obj_explosion);
	alarm[5] = room_speed/1.5;
}