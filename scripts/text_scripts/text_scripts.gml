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
			scr_ds_grid_add_text("nunca pare de seguir em frente",c_teal,noone,false,f_dialogue);
			scr_ds_grid_add_text("nunca pare de seguir em frente",c_teal,noone,false,f_dialogue);
			scr_ds_grid_add_text("nunca pare de seguir em frentenunca pare de seguir em frentenunca pare de seguir em frentenunca pare de seguir guir em frentenunca pare de seguir guir",c_teal,noone,false,f_dialogue);
			break;
		}
		case("dialogue4"):
		{
			scr_ds_grid_add_text("Mais um sonho estranho...",c_white,obj_player,true,f_dialogue2);
			break;
		}
		case("dialogue5"):
		{
			scr_ds_grid_add_text("Ei, amigo!",c_white,obj_npc,true,f_dialogue2);
			scr_ds_grid_add_text("Tem uns caras querendo arrumar confusão mais pra frente",c_white,obj_npc,true,f_dialogue2);
			scr_ds_grid_add_text("Eu não iria lá se fosse você",c_white,obj_npc,true,f_dialogue2);
			scr_ds_grid_add_text("...",c_white,obj_player,true,f_dialogue2);
			scr_ds_grid_add_text("...",c_white,obj_npc,true,f_dialogue2);
			scr_ds_grid_add_text("Bom... Você quem sabe...",c_white,obj_npc,true,f_dialogue2);
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