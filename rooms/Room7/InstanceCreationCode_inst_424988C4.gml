alarm[0] = 2 * room_speed;
audio_play_sound(snd_stinger,1,false);
action = function()
{
	instance_create_layer(obj_player.x,obj_player.y,layer,obj_gun);
}