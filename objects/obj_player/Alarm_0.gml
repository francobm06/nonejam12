if (hsp > 3) or (hsp < -3) 
{
	instance_create_depth(x-12*image_xscale,y+18,depth+1,obj_trail_par);
	alarm[0] = 2;
}
else
{
	alarm[0] = -1;
}