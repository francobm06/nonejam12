switch(room)
{
	case(Room_transition2): room_goto(Room1); break;
	case(Room_transition3):
	{
		with(instance_create_layer(0,0,layer,obj_trigger))
		{
			alarm[0] = room_speed;
			action = function()
			{
				audio_stop_all(); 
				audio_play_sound(snd_engine_stop,1,false);
				scr_transition(c_black,0.1,0.1,Room2);
			}
		}
		break;
	}
	case(Room_transition4):
	{
		with(instance_create_layer(0,0,layer,obj_trigger))
		{
			alarm[0] = 2 * room_speed;
			action = function()
			{
				audio_stop_all(); 
				scr_transition(c_black,1,1,Room4);
			}
		}
		break;
	}
	case(Room6):
	{
		with(obj_enemy) state = "walk";
		instance_create_layer(0,0,"Instances",obj_gun_fake);
		break;
	}
}