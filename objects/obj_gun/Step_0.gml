// Isso aqui gira a arma
image_angle = point_direction(obj_player.x, obj_player.y, mouse_x, mouse_y);
x = obj_player.x + lengthdir_x(48-recoil, image_angle);
y = obj_player.y + lengthdir_y(48-recoil, image_angle);

recoil = lerp(recoil,0,0.1);

firingdelay--;
if (mouse_check_button_pressed(mb_left)) and (firingdelay <= 0)
{
	firingdelay = 10;
	scr_screenshake(5,5);
	audio_play_sound(snd_shoot,1,false,,,random_range(0.8,1.2));
	recoil = 10;
	with(instance_create_layer(x,y,layer,obj_bullet))
	{
		speed = 30;
		direction = point_direction(obj_player.x,obj_player.y,mouse_x,mouse_y) + random_range(-3,3);
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
}
// Isso aqui vira a arma
if (image_angle > 90) and (image_angle < 270) image_yscale = -0.76; else image_yscale = 0.75;