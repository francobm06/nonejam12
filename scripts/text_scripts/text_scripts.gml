function scr_texts()
{
	switch dialogue_id
	{
		case("dialogue0"):
		{
			scr_ds_grid_add_text("O mundo não acabou de uma vez.",c_red,noone,false,f_dialogue);
			scr_ds_grid_add_text("Ele foi secando bem lentamente primeiro.",c_red,noone,false,f_dialogue);
			scr_ds_grid_add_text("Não há mais nada para comer.\nNão há mais para onde ir.",c_red,noone,false,f_dialogue);
			break;
		}
		case("dialogue1"):
		{
			scr_ds_grid_add_text("Eu procuro por algo muito importante",c_red,noone,false,f_dialogue);
			scr_ds_grid_add_text("Mas não sei exatamente o que é",c_red,noone,false,f_dialogue);
			break;
		}
		case("dialogue2"):
		{
			scr_ds_grid_add_text("Essa fenda é enorme...",c_white,obj_player,true,f_dialogue2);
			scr_ds_grid_add_text("Eu preciso passar bem rápido para não cair.",c_white,obj_player,true,f_dialogue2);
			break;
		}
		case("dialogue3"):
		{
			scr_ds_grid_add_text("Está ficando tarde",c_red,noone,false,f_dialogue);
			scr_ds_grid_add_text("É melhor eu continuar minha busca amanhã...",c_red,noone,false,f_dialogue);
			break;
		}
		case("dialoguedream"):
		{
			scr_ds_grid_add_text("você está chegando perto",c_teal,noone,false,f_dialogue);
			scr_ds_grid_add_text("a perseverança é a assinatura do inconformado",c_teal,noone,false,f_dialogue);
			scr_ds_grid_add_text("nunca pare de seguir em frente",c_teal,noone,false,f_dialogue);
			scr_ds_grid_add_text("nunca pare de seguir em frentenunca pare de seguir em frentenunca pare de seguir em frentenunca pare de seguir em frenteNUNCANUNCANUNCANUNCANUNCA",c_teal,noone,false,f_dialogue);
			break;
		}
		case("dialogue4"):
		{
			scr_ds_grid_add_text("Ei, amigo!",c_white,obj_npc,true,f_dialogue2);
			scr_ds_grid_add_text("Você está bem?",c_white,obj_npc,true,f_dialogue2);
			scr_ds_grid_add_text("...",c_white,obj_player,true,f_dialogue2);
			scr_ds_grid_add_text("Quem é você?",c_white,obj_player,true,f_dialogue2);
			scr_ds_grid_add_text("Eu só estou de passagem",c_white,obj_npc,true,f_dialogue2);
			scr_ds_grid_add_text("Te encontrei desmaiado em cima da moto...",c_white,obj_npc,true,f_dialogue2);
			scr_ds_grid_add_text("...",c_white,obj_npc,true,f_dialogue2);
			scr_ds_grid_add_text("O que você faz por essas bandas?",c_white,obj_npc,true,f_dialogue2);
			scr_ds_grid_add_text("...",c_white,obj_player,true,f_dialogue2);
			scr_ds_grid_add_text("Eu estou procurando por algo... importante...",c_white,obj_player,true,f_dialogue2);
			scr_ds_grid_add_text("...",c_white,obj_npc,true,f_dialogue2);
			scr_ds_grid_add_text("Difícil você encontrar algo de útil por aqui, amigo...",c_white,obj_npc,true,f_dialogue2);
			scr_ds_grid_add_text("Mas... Boa sorte!",c_white,obj_npc,true,f_dialogue2);
			scr_ds_grid_add_text("Enfim... Eu só vim aqui te avisar o seguinte...",c_white,obj_npc,true,f_dialogue2);
			scr_ds_grid_add_text("Tem uns caras querendo arrumar confusão mais pra frente",c_white,obj_npc,true,f_dialogue2);
			scr_ds_grid_add_text("Eu não iria lá se fosse você...",c_white,obj_npc,true,f_dialogue2);
			scr_ds_grid_add_text("...",c_white,obj_npc,true,f_dialogue2);
			scr_ds_grid_add_text("Bom... Você quem sabe...",c_white,obj_npc,true,f_dialogue2);
			
			break;
		}
		case("dialogue5"):
		{
			scr_ds_grid_add_text("...",c_white,obj_enemy,true,f_dialogue2);
			scr_ds_grid_add_text("Posso ajudar?",c_white,obj_enemy,true,f_dialogue2);
			scr_ds_grid_add_text("...",c_white,obj_player,true,f_dialogue2);
			scr_ds_grid_add_text("Eu preciso passar por aqui.",c_white,obj_player,true,f_dialogue2);
			scr_ds_grid_add_text("Aqui é nosso território.",c_white,obj_enemy,true,f_dialogue2);
			scr_ds_grid_add_text("Sem chance.",c_white,obj_enemy,true,f_dialogue2);
			scr_ds_grid_add_text("...",c_white,obj_player,true,f_dialogue2);
			scr_ds_grid_add_text("Eu preciso passar por aqui.",c_white,obj_player,true,f_dialogue2);
			break;
		}
		case("dialogue6"):
		{
			scr_ds_grid_add_text("A vida costumava ser muito boa...",c_teal,noone,false,f_dialogue);
			scr_ds_grid_add_text("Acorde.",c_teal,noone,false,f_dialogue);
			scr_ds_grid_add_text("Eles estão atrás de você.",c_teal,noone,false,f_dialogue);
			break;
		}
	}
}

function scr_ds_grid_add_row()
{
	///@arg ds_grid
	var _grid = argument[0];
	ds_grid_resize(_grid,ds_grid_width(_grid),ds_grid_height(_grid)+1);
	return(ds_grid_height(_grid)-1);
}


function scr_ds_grid_add_text()
{
	///@arg text
	///@arg color
	///@arg follow
	///@arg background
	///@arg font
	
	var _grid = text_grid;
	var _y = scr_ds_grid_add_row(_grid);
	
	_grid[# 0, _y] = argument[0];
	_grid[# 1, _y] = argument[1];
	_grid[# 2, _y] = argument[2];
	_grid[# 3, _y] = argument[3];
	_grid[# 4, _y] = argument[4];
}