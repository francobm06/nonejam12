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
		with(obj_player) state = "stop2";
		with(obj_enemy) state = "walk";
		instance_create_layer(0,0,"Instances",obj_gun_fake);
		break;
	}
	case(Room_transition7):
	{
		room_goto(Room8);
		break;
	}
	case(Room_transition8):
	{
		with(instance_create_layer(0,0,layer,obj_trigger))
		{
			alarm[0] = room_speed;
			action = function()
			{
				room_goto(Room7);
			}
		}
		break;
	}
	case(Room_transition9): room_goto(Room9); break;
	case(Room_transition10): room_goto(Room10); break;
	case(Room_transition12): room_goto(Room11); break;
	case(Room11):
	{
		with(obj_player)
		{
			state = "free";
			hsp = 13;
			hsp_real = 13;
		}
		with(obj_boss)
		{
			instance_create_layer(0,0,"Instances",obj_gun);
			state = "chase";
			alarm[4] = 3 * room_speed;
		}
		break;
	}
	case(Room_transition13): room_goto(Room14); break;
	case(Room_transition14): room_goto(Room15); break;
	case(Room_cutscene4): 
	{
		with(obj_player2_dummy) alarm[0] = sp;
		with(instance_create_layer(-32,-32,"Instances",obj_trigger))
		{
			alarm[0] = 12 * room_speed;
			action = function()
			{
				room_goto(Room16);
			}
		}
		break;
	}
}