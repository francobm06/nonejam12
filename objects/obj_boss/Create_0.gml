hp_max = 20;
hp = hp_max;

flash = 0;

scale = 1.4;

hsp = 0;
hsp_real = 0;
hsp_max = 14.5;

accel = 0.5;
decel = 0.02;
dir_x = 0;

yoffset = random_range(-64,64);
yspeed = 10;

state = "chase";

alarm[4] = 3 * room_speed; //ataque

explodir = function()
{
	instance_create_depth(x,y,depth-1,obj_explosion);
}