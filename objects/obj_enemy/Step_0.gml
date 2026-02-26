if (state == "chase")
{
	var dir_x = sign(obj_player.x - x);
	if (dir_x != 0) and (abs(hsp_real) < 30) hsp_real += dir_x * accel;
	else hsp_real = lerp(hsp_real,0,decel);
	y += ((obj_player.y - y)+yoffset) / yspeed;
	if (alarm[1] == -1) alarm[1] = random_range(3,7) * room_speed;
}
if (state == "dead")
{
	hsp_real = lerp(hsp_real,0,0.05);
	hsp = lerp(hsp,0,0.2);
	image_alpha -= 0.01;
	if (place_meeting(x,y,obj_enemy))
	{
		explodir();
		//with(other) explodir();
	}
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
		alarm[0] = 4 * room_speed; // Morrer
		alarm[2] = 1; // Particula
	}
}

if (hsp != 0) image_xscale = sign(hsp);
hsp = clamp(hsp_real, -hsp_max, hsp_max);
x += hsp;