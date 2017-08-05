//If outside
if room = rm_planet{
	surface_set_target(nightCycleSurf);
	draw_clear(c_black);
	
		//Draw Glow
		with (obj_torch){
			gpu_set_blendmode(bm_src_colour);
			draw_sprite_ext(spr_glow,0,x,y,glowSize,glowSize,0,c_white,1);
			gpu_set_blendmode(bm_normal);
		}
	
	surface_reset_target();
	draw_surface_ext(nightCycleSurf,0,0,1,1,0,c_white,alpha);
}
