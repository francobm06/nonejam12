image_xscale = 0.75;
image_yscale = 0.75;

recoil = 0;
firingdelay = 0;

audio_play_sound(snd_gun_pick,1,false);
alarm[0] = 1;

shoot = function()
{
	scr_screenshake(15,5);
	audio_play_sound(snd_shoot,1,false,,,random_range(0.8,1.2));
	recoil = 20;
	with(instance_create_layer(x,y,layer,obj_bullet_boss))
	{
		speed = 50;
		direction = point_direction(obj_boss.x,obj_boss.y,obj_cursor_boss.x,obj_cursor_boss.y) + random_range(-3,3);
		image_angle = direction;
	}
	repeat(irandom_range(4,7))
	{
		with(instance_create_layer(x,y,layer,obj_gun_part))
		{
			speed = 6;
			direction = point_direction(obj_player.x,obj_player.y,mouse_x,mouse_y) + random_range(-45,45);
			sprite_index = spr_gun_part;
			image_angle = direction;
			image_index = irandom_range(0,image_number-1);
		}
	}
	alarm[0] = room_speed;
}