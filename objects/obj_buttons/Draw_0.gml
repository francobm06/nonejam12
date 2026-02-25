draw_self();

if (black > 0)
{
	black--;
	shader_set(sh_black);
	draw_self();
	shader_reset();
}