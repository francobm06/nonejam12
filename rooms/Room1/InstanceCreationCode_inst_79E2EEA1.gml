if(instance_exists(obj_transition)) instance_destroy(obj_transition);
alarm[0] = 3 * room_speed;
global.dialogue = true;
action = function()
{
	room_goto(Room_transition3);
}