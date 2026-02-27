#region KEYS

key_left = keyboard_check(ord("A")) || keyboard_check(vk_left);
key_right = keyboard_check(ord("D")) || keyboard_check(vk_right);
key_up = keyboard_check(ord("W")) || keyboard_check(vk_up);
key_down = keyboard_check(ord("S")) || keyboard_check(vk_down);

#endregion

#region MOVEMENT

var move_h = key_right - key_left;

switch(state)
{
	case ("free"):
	{
		if (move_h != 0) and (abs(hsp_real) < 15) hsp_real += move_h * accel;
		else hsp_real = lerp(hsp_real, 0, decel);
		if (hsp < 1) or (hsp > -1) and (move_h == 0) hsp = 0;

		vsp = (key_down - key_up) * vsp_max;
		break;
	}
	case ("stall"):
	{
		if (!global.dialogue) state = "free";
		break;
	}
	case ("stop"):
	{
		hsp_real = lerp(hsp_real, 0, decel*2);
		vsp = lerp(vsp,0,0.5);
		if (!global.dialogue) state = "free";
		break;
	}
	case ("jump"):
	{
		image_angle = lerp(image_angle,45*sign(image_xscale),0.7);
		vsp += 0.6;
		break;
	}
	case ("stop2"):
	{
		hsp_real = 0;
		hsp = 0;
		vsp = 0;
		break;
	}
}

hsp = clamp(hsp_real, -hsp_max, hsp_max);

if (place_meeting(x,y,obj_hole)) and (!place_meeting(x,y,obj_ground)) and (!instance_exists(obj_death)) instance_create_layer(0,0,layer,obj_death);
if (place_meeting(x,y,obj_slope))
{
	if (abs(hsp) >= 9*other.image_xscale) and (state != "jump")
	{
		state = "jump";
		audio_play_sound(snd_jump,1,false);
		vsp = -6;
	}
}

#endregion

#region PARTICULAS
// Particulas
if (abs(hsp) > 1)
{
	if (!audio_is_playing(snd_engine)) audio_play_sound(snd_engine,1,true);
	else audio_sound_pitch(snd_engine,max(0.5,abs(hsp)/4+random_range(-0.2,0.2)))
}
else audio_stop_sound(snd_engine);
if ((hsp > 3) or (hsp < -3)) and alarm[0] == -1 alarm[0] = 5;
if (hsp > 6) or (hsp < -6) 
{
	if (!place_meeting(x,y,obj_hole)) instance_create_depth(x-12*image_xscale,y+18,depth+1,obj_motorcycle_trail);
}

#endregion

#region MORTE

if (hp <= 0)
{
	if (!instance_exists(obj_death)) instance_create_layer(0,0,layer,obj_death);
}

#endregion

#region COLLISION
if (place_meeting(x+hsp,y,obj_solid))
{
	while (!place_meeting(x+sign(hsp),y,obj_solid))
	{
		x += sign(hsp);
	}
	if (hsp > 2) or (hsp < -2) 
	{
		hsp = -hsp/4;
		hsp_real = -hsp_real/4;
	}
	else
	{
		hsp = 0;
		hsp_real = 0;
	}
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

if (hsp > 2) or (hsp < -2)
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