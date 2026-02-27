if (abs(hsp) > 3)
{
	instance_create_depth(x-12*image_xscale,y+18,depth+1,obj_trail_par);
	alarm[3] = 2;
}
else
{
	alarm[3] = -1;
}