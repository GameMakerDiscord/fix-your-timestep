/// @description Draws the spirte with the interpolated render values 
draw_sprite_ext(
	sprite_index,image_index,
	lerp(xprevious,x,global._ts_render_alpha),
	lerp(yprevious,y,global._ts_render_alpha),
	image_xscale,image_yscale,
	image_angle,image_blend,
	image_alpha
); 
