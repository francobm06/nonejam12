///@arg cor
///@arg velocidade_fechar
///@arg velocidade_abrir
///@arg room_destino
function scr_transition(argument0, argument1, argument2, argument3) {

	if(!instance_exists(obj_transition)){
		var t = instance_create_layer(x, y, layer, obj_transition);
			t.cor = argument0;
			t.velocidade1 = argument1;
			t.velocidade2 = argument2;
			t.room_destino = argument3;
	}


}