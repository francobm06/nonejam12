// Isso aqui gira a arma
image_angle = point_direction(obj_player.x, obj_player.y, mouse_x, mouse_y);
x = obj_player.x + lengthdir_x(48, image_angle);
y = obj_player.y + lengthdir_y(48, image_angle);


if (mouse_check_button_pressed(mb_left))
{
	audio_play_sound(snd_shoot,1,false,,,random_range(0.8,1.2));
	//audio_play_sound(snd_tone,1,false);
	room_goto(Room_transition6);
}
// Isso aqui vira a arma
if (image_angle > 90) and (image_angle < 270) image_yscale = -0.76; else image_yscale = 0.75;