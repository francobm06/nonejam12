hsp = 8;
hsp_real = 8;
hsp_max = 15;

accel = 0.2;
decel = 0.01;

vsp = 0;
vsp_max = 4;

state = "stall";

instance_create_layer(x,y,layer,camera);

window_set_cursor(cr_none);
cursor_sprite = spr_cursor;