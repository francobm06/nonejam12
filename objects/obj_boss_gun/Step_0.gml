// Isso aqui gira a arma
image_angle = point_direction(obj_boss.x, obj_boss.y, obj_player.x, obj_player.y);
x = obj_boss.x + lengthdir_x(48-recoil, image_angle);
y = obj_boss.y + lengthdir_y(48-recoil, image_angle);

recoil = lerp(recoil,0,0.1);

// Isso aqui vira a arma
if (image_angle > 90) and (image_angle < 270) image_yscale = -0.76; else image_yscale = 0.75;