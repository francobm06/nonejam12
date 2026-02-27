var xx = random_range(32,room_width-32);
var yy = random_range(-32,0);

instance_create_layer(xx,yy,"Instances",obj_sand);
alarm[2] = room_speed;