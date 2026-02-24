function scr_texts()
{
	switch dialogue_id
	{
		case("dialogue0"):
		{
			scr_ds_grid_add_text("Não há mais nada para comer.",c_red,noone,false,f_dialogue);
			scr_ds_grid_add_text("Não há mais para onde ir.",c_red,noone,false,f_dialogue);
			scr_ds_grid_add_text("O mundo acabou.",c_red,noone,false,f_dialogue);
			break;
		}
		case("dialogue1"):
		{
			scr_ds_grid_add_text("fala galerinha do bem",c_white,obj_player,true);
			scr_ds_grid_add_text("oioi",c_white,obj_player,true);
			break;
		}
		case("dialogue2"):
		{
			scr_ds_grid_add_text("Ué...",c_white,obj_player2,true);
			scr_ds_grid_add_text("Onde eu estou?",c_white,obj_player2,true);
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