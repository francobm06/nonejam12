function scr_freeze(_freezedur)
{
	var _t = current_time + _freezedur;
	while (current_time < _t) { };
}