key_right = keyboard_check(ord("D")) || keyboard_check(vk_right);
key_left = keyboard_check(ord("A")) || keyboard_check(vk_left);

hsp = (key_right - key_left) * walksp;
var onground = place_meeting(x,y+4,obj_solid_par);

vsp += grv;

#region COLLISION

if onground and !place_meeting(x,y+4,obj_solid) and vsp > 0
{
	while !place_meeting(x, y+1, obj_solid_slope) y += 1;
}

var _arr = move_and_collide(hsp, vsp, obj_solid_par);
if (array_length(_arr) != 0) and (place_meeting(x,y+vsp,obj_solid_par)) vsp = 0;

#endregion

if (hsp == 0) or (place_meeting(x+sign(hsp),y,obj_solid))
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
