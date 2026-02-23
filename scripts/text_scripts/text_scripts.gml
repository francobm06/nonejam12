function scr_ds_grid_add_row()
{
	///@arg ds_grid
	var _grid = argument[0];
	ds_grid_resize(_grid,ds_grid_width(_grid),ds_grid_height(_grid)+1);
	return(ds_grid_height(_grid)-1);
}


function scr_ds_grid_add_text()
{
	///@arg color
	///@arg text
	
	var _grid = text_grid;
	var _y = scr_ds_grid_add_row(_grid);
	
	_grid[# 0, _y] = argument[0];
	_grid[# 1, _y] = argument[1];
}