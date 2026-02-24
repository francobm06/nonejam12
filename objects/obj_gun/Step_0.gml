// Isso aqui gira a arma
image_angle = point_direction(obj_player.x, obj_player.y, mouse_x, mouse_y);
x = obj_player.x + lengthdir_x(48-recoil, image_angle);
y = obj_player.y + lengthdir_y(48-recoil, image_angle);

recoil = lerp(recoil,0,0.1);

firingdelay--;
if (mouse_check_button_pressed(mb_left)) and (firingdelay <= 0)
{
	firingdelay = 20;
	scr_screenshake(5,5);
	recoil = 10;
	with(instance_create_layer(x,y,layer,obj_bullet))
	{
		speed = 50;
		direction = point_direction(x,y,mouse_x,mouse_y);
		image_angle = direction;
	}
}
// Isso aqui vira a arma
if (image_angle > 90) and (image_angle < 270) image_yscale = -0.76; else image_yscale = 0.75;