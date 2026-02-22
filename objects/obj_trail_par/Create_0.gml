if (instance_exists(obj_player)) dirfrom = obj_player.image_xscale;

image_index = irandom_range(0,image_number-1);
alarm[0] = random_range(30,90);

vspeed += random_range(.5,-.5);
hspeed = 0.5 * -dirfrom;