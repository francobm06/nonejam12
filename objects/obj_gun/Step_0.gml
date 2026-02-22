// Isso aqui gira a arma
image_angle = point_direction(obj_player.x, obj_player.y, mouse_x, mouse_y);
x = obj_player.x + lengthdir_x(48, image_angle);
y = obj_player.y + lengthdir_y(48, image_angle);

// Isso aqui vira a arma
if (image_angle > 90) and (image_angle < 270) image_yscale = -0.76; else image_yscale = 0.75;