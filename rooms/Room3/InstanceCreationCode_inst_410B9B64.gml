contact = true;
action = function()
{
	with(obj_player)
	{
		state = "free";
		image_angle = 0;
	}
	instance_destroy();
}