if (hp <= 0)
{
	instance_destroy();
	if instance_exists(obj_log) instance_destroy(obj_log);
}