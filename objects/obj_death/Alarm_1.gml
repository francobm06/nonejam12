if (global.room_return == Room11)
{
	var c = irandom_range(0,10);
	if (c > 8)
	{
		with(instance_create_layer(0,0,"Dialogue",obj_text))
		{
			dialogue_id = "death_boss";
		}
	}
	else scr_transition(c_black,1,0.1,global.room_return);
}
if (global.room_return == Room12)
{
	var c = irandom_range(1,10);
	if (c > 7)
	{
		with(instance_create_layer(0,0,"Dialogue",obj_text))
		{
			dialogue_id = "death_hole";
		}
	}
	else scr_transition(c_black,1,0.1,global.room_return);
}
else scr_transition(c_black,1,0.1,global.room_return);
instance_destroy();