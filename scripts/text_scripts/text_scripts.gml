function scr_texts()
{
	switch dialogue_id
	{
		case("dialogue0"):
		{
			scr_ds_grid_add_text("O mundo não acabou de uma vez.",c_red,noone,false,f_dialogue);
			scr_ds_grid_add_text("Ele foi secando lentamente primeiro",c_red,noone,false,f_dialogue);
			scr_ds_grid_add_text("Até não sobrar nada.",c_red,noone,false,f_dialogue);
			break;
		}
		case("dialogue1"):
		{
			scr_ds_grid_add_text("Eu procuro por algo muito importante",c_red,noone,false,f_dialogue);
			scr_ds_grid_add_text("Mas não lembro exatamente o que é",c_red,noone,false,f_dialogue);
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
			scr_ds_grid_add_text("Eu estou procurando por algo...",c_white,obj_player,true,f_dialogue2);
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
			scr_ds_grid_add_text("Posso ajudar, amigão?",c_white,obj_enemy,true,f_dialogue2);
			scr_ds_grid_add_text("...",c_white,obj_player,true,f_dialogue2);
			scr_ds_grid_add_text("Eu preciso passar por aqui.",c_white,obj_player,true,f_dialogue2);
			scr_ds_grid_add_text("...",c_white,obj_enemy,true,f_dialogue2);
			scr_ds_grid_add_text("HAHA",c_white,obj_enemy,true,f_dialogue2);
			scr_ds_grid_add_text("Aqui é NOSSO território.",c_white,obj_enemy,true,f_dialogue2);
			scr_ds_grid_add_text("Sem chance.",c_white,obj_enemy,true,f_dialogue2);
			scr_ds_grid_add_text("...",c_white,obj_player,true,f_dialogue2);
			scr_ds_grid_add_text("...",c_white,obj_enemy,true,f_dialogue2);
			scr_ds_grid_add_text("Vou te dar uma ajudinha pra sair",c_white,obj_enemy,true,f_dialogue2);
			break;
		}
		case("dialogue6"):
		{
			scr_ds_grid_add_text("A vida costumava ser muito boa... Não é?",c_teal,noone,false,f_dialogue);
			scr_ds_grid_add_text("...O que você está fazendo aí afinal?",c_teal,noone,false,f_dialogue);
			break;
		}
		case("dialogue7"):
		{
			scr_ds_grid_add_text("...Acho que não importa mais...",c_teal,noone,false,f_dialogue);
			scr_ds_grid_add_text("Acorde.",c_teal,noone,false,f_dialogue);
			scr_ds_grid_add_text("Eles estão atrás de você.",c_teal,noone,false,f_dialogue);
			break;
		}
		case("dialogue8"):
		{
			scr_ds_grid_add_text("Eu só queria entender isso tudo...",c_red,noone,false,f_dialogue);
			scr_ds_grid_add_text("Nada parece fazer sentido",c_red,noone,false,f_dialogue);
			break;
		}
		case("dialogue9"):
		{
			scr_ds_grid_add_text("Nada se encaixa, nada...",c_red,noone,false,f_dialogue);
			break;
		}
		case("dialogue10"):
		{
			scr_ds_grid_add_text("Não se distraia.",c_teal,noone,false,f_dialogue);
			scr_ds_grid_add_text("...Ainda restou um.",c_teal,noone,false,f_dialogue);
			break;
		}
		case("dialogue11"):
		{
			scr_ds_grid_add_text("Você...",c_white,obj_boss,true,f_dialogue2);
			scr_ds_grid_add_text("Você já era.",c_white,obj_boss,true,f_dialogue2);
			break;
		}
		case("dialogue12"):
		{
			scr_ds_grid_add_text("Eu sigo em frente.",c_red,noone,false,f_dialogue);
			break;
		}
		case("dialogue13"):
		{
			scr_ds_grid_add_text("Eu...",c_red,noone,false,f_dialogue);
			scr_ds_grid_add_text("...sigo...",c_red,noone,false,f_dialogue);
			scr_ds_grid_add_text("...em...",c_red,noone,false,f_dialogue);
			scr_ds_grid_add_text("...frente.",c_red,noone,false,f_dialogue);
			break;
		}
		case("dialogue14"):
		{
			scr_ds_grid_add_text("...",c_white,obj_player,true,f_dialogue2);
			scr_ds_grid_add_text("...O... O quê?",c_white,obj_player,true,f_dialogue2);
			scr_ds_grid_add_text("...Eu pensei que você fosse... Eu?",c_white,obj_player,true,f_dialogue2);
			scr_ds_grid_add_text("...Quem... é você?",c_white,obj_player,true,f_dialogue2);
			scr_ds_grid_add_text("...",c_white,obj_trigger,true,f_dialogue2);
			scr_ds_grid_add_text("Eu estava esperando por você.",c_white,obj_trigger,true,f_dialogue2);
			scr_ds_grid_add_text("...",c_white,obj_player,true,f_dialogue2);
			scr_ds_grid_add_text("...O quê?...",c_white,obj_player,true,f_dialogue2);
			scr_ds_grid_add_text("Por favor...",c_white,obj_trigger,true,f_dialogue2);
			scr_ds_grid_add_text("Não se mova.",c_white,obj_trigger,true,f_dialogue2);
			break;
		}
		case("dialogue16"):
		{
			scr_ds_grid_add_text("...Eu sou só mais um no meio de milhões...",c_red,noone,false,f_dialogue);
			scr_ds_grid_add_text("...",c_red,noone,false,f_dialogue);
			scr_ds_grid_add_text("Você precisa sair daqui.",c_teal,noone,false,f_dialogue);
			scr_ds_grid_add_text("Eu preciso sair daqui.",c_red,noone,false,f_dialogue);
			scr_ds_grid_add_text("Você precisa sair daqui.",c_teal,noone,false,f_dialogue);
			scr_ds_grid_add_text("Eu vou sair daqui.",c_red,noone,false,f_dialogue);
			break;
		}
		case("dialogue17"):
		{
			scr_ds_grid_add_text("Assim como um grão de areia...",c_red,noone,false,f_dialogue);
			break;
		}
		case("dialogue18"):
		{
			scr_ds_grid_add_text("Não importa o que esteja acontecendo...",c_teal,noone,false,f_dialogue);
			scr_ds_grid_add_text("...Não importa o que eu diga...",c_teal,noone,false,f_dialogue);
			scr_ds_grid_add_text("Nunca mais volte.",c_teal,noone,false,f_dialogue);
			scr_ds_grid_add_text("...",c_teal,noone,false,f_dialogue);
			scr_ds_grid_add_text("Não há nada para você aqui...",c_teal,noone,false,f_dialogue);
			scr_ds_grid_add_text("A sua busca é em outro lugar...",c_teal,noone,false,f_dialogue);
			scr_ds_grid_add_text("Em algum lugar no deserto... Ainda deve haver esperança...",c_teal,noone,false,f_dialogue);
			break;
		}
		case("death_boss"):
		{
			scr_ds_grid_add_text("Minhas balas parecem não surtir efeito nele...",c_red,noone,false,f_dialogue);
			scr_ds_grid_add_text("Talvez eu possa atrasar ele até o final...?",c_red,noone,false,f_dialogue);
			break;
		}
		case("death_hole"):
		{
			scr_ds_grid_add_text("...",c_red,noone,false,f_dialogue);
			scr_ds_grid_add_text("Quem é o animal que constrói uma ponte assim??",c_red,noone,false,f_dialogue);
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