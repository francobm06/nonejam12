alarm[0] = room_speed;
global.dialogue = true;
action = function()
{
	with(instance_create_layer(0,0,"Dialogue",obj_text))
	{
		dialogue_id = "dialogue1";
	}
	instance_destroy();
}