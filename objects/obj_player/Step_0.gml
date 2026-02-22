key_left = keyboard_check(ord("A")) || keyboard_check(vk_left);
key_right = keyboard_check(ord("D")) || keyboard_check(vk_right);
key_up = keyboard_check(ord("W")) || keyboard_check(vk_up);
key_down = keyboard_check(ord("S")) || keyboard_check(vk_down);

#region MOVEMENT

hsp_real += (key_right - key_left);
hsp = clamp(hsp_real, -hsp_max, hsp_max);
hsp_real = lerp(hsp_real, 0, 0.1);


if (hsp > 0.75) or (hsp < -0.75)
{
	vsp = (key_down - key_up) * vsp_max;
}
else
{
	vsp = lerp(vsp, 0, 0.1);
}

if ((hsp > 3) or (hsp < -3)) and alarm[0] == -1
{
	alarm[0] = 5;
}

if (hsp > 6) or (hsp < -6) instance_create_depth(x-12*image_xscale,y+18,depth+1,obj_motorcycle_trail);

#endregion


#region COLLISION
if (place_meeting(x+hsp,y,obj_solid))
{
	while (!place_meeting(x+sign(hsp),y,obj_solid))
	{
		x += sign(hsp);
	}
	hsp = 0;
}

if (place_meeting(x,y+vsp,obj_solid))
{
	while (!place_meeting(x,y+sign(vsp),obj_solid))
	{
		y += sign(vsp);
	}
	vsp = 0;
}
#endregion

#region ANIMATION

if (hsp > 0.75) or (hsp < -0.75)
{
	image_speed = 1;
}
else
{
	image_speed = 0;
	image_index = 0;
}
if (hsp != 0) image_xscale = sign(hsp);

#endregion

x += hsp;
y += vsp;