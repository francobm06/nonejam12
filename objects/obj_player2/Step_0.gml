key_right = keyboard_check(ord("D")) || keyboard_check(vk_right);
key_left = keyboard_check(ord("A")) || keyboard_check(vk_left);

switch(state)
{
	case("free"):
	{
		hsp = (key_right - key_left) * walksp;
		vsp += grv;
		break;
	}
	case("freeze"):
	{
		hsp = 0;
		vsp = 0;
	}
}

if (global.dialogue) state = "freeze";
else state = "free";

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

x += hsp;
y += vsp;

#endregion


if (hsp == 0)
{
	sprite_index = spr_player2;
	image_index = 0;
	image_speed = 0;
}
else
{
	image_speed = 1;
	sprite_index = spr_player2_walk;
	image_xscale = sign(hsp);
}
