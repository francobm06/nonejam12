// Isso aqui gira a arma
image_angle = point_direction(obj_boss.x, obj_boss.y, obj_player.x, obj_player.y);
x = obj_boss.x + lengthdir_x(48-recoil, image_angle);
y = obj_boss.y + lengthdir_y(48-recoil, image_angle);

recoil = lerp(recoil,0,0.1);

if (bullets <= 0) 
{
	instance_destroy();
	if (instance_exists(obj_cursor_boss)) instance_destroy(obj_cursor_boss);
	with(obj_boss) alarm[4] = 2 * room_speed;
}

// Isso aqui vira a arma
if (image_angle > 90) and (image_angle < 270) image_yscale = -0.76; else image_yscale = 0.75;