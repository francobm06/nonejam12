cor = c_white;
velocidade1 = .1;
velocidade2 = .1;
alpha = 0;
room_destino = room;
estado = "fechando";


xx = display_get_gui_width();
yy = display_get_gui_height();

global.dialogue = true;
if (instance_exists(obj_player))
{
	with(obj_player) state = "stop";
}