draw_self();

if(place_meeting(x, y, obj_player))
{
	draw_set_alpha(0.5);
	draw_set_color(c_black);
	draw_set_halign(fa_center);
	draw_set_font(fnt_obj_planet);
	draw_text(x + 1, y - obj_player.sprite_height + 1, "Press E\nto go to planet!");

	draw_set_alpha(1);
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_font(fnt_obj_planet);
	draw_text(x + 1, y - obj_player.sprite_height + 1, "Press E\nto go to planet!");
}
