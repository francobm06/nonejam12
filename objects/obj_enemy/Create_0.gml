hp = 4;
flash = 0;

hsp = 0;
hsp_real = 0;
hsp_max = random_range(13,17);

accel = 0.5;
decel = 0.02;
dir_x = 0;

yoffset = random_range(-48,48);
yspeed = irandom_range(8,10);

state = "chase";

explodir = function()
{
	instance_create_depth(x,y,depth-1,obj_explosion);
	instance_destroy();
}