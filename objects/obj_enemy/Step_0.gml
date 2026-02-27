dir_x = sign(obj_player.x - x);

#region STATE MACHINE

if (state == "chase")
{
	if (dir_x != 0) and (abs(hsp_real) < 30) hsp_real += dir_x * accel;
	else hsp_real = lerp(hsp_real,0,decel);
	y += ((obj_player.y - y)+yoffset) / yspeed;
	if (alarm[1] == -1) alarm[1] = random_range(2,4) * room_speed;
}
if (state == "dead")
{
	hsp_real = lerp(hsp_real,0,0.05);
	hsp = lerp(hsp,0,0.2);
}
if (state == "walk")
{
	hsp = -1;
	hsp_real = -1;
}
if (state == "wait")
{
	//if (collision_circle(x,y,256,obj_player,false,false)) state = "chase";
	if (collision_rectangle(x-128,0,x+128,room_height,obj_player,false,false)) state = "chase";
}
if (hp <= 0)
{
	if (state != "dead") 
	{
		repeat(irandom_range(20,30))
		{
			with(instance_create_layer(x,y,layer,obj_gun_part))
			{
				speed = 8;
				direction = random(360);
				sprite_index = spr_gun_part;
				image_angle = direction;
				image_index = irandom_range(0,image_number-1);
			}
		}
		state = "dead";
		alarm[0] = 3 * room_speed; // Morrer
		alarm[2] = 1; // Particula
	}
}
#endregion

#region PARTICULAS


if (abs(hsp) > 1)
{
	if (!audio_is_playing(snd_engine2)) audio_play_sound(snd_engine2,1,true);
	else audio_sound_pitch(snd_engine2,max(0.5,abs(hsp)/4+random_range(-0.2,0.2)))
}
else audio_stop_sound(snd_engine2);
if (abs(hsp) > 3) and alarm[3] == -1 alarm[3] = 5;
if (abs(hsp) > 6) instance_create_depth(x-12*image_xscale,y+18,depth+1,obj_motorcycle_trail);

#endregion

#region ANIMATION


hsp = clamp(hsp_real, -hsp_max, hsp_max);
x += hsp;

if (hsp > 2) or (hsp < -2)
{
	image_speed = 1;
}
else
{
	image_speed = 0;
	image_index = 0;
}
if (dir_x != 0) image_xscale = dir_x;

#endregion