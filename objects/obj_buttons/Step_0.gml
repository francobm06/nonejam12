if (mouse)
{
	image_xscale = lerp(image_xscale,xscale+0.3,0.1);
	image_yscale = lerp(image_yscale,yscale+0.3,0.1);
}
else
{
	image_xscale = lerp(image_xscale,xscale,0.1);
	image_yscale = lerp(image_yscale,yscale,0.1);	
}