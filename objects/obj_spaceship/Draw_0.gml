image_speed = 0;
image_index = global.spaceshipindex;

draw_self();

if(place_meeting(x, y, obj_player_planet))
{
	draw_set_alpha(0.5);
	draw_set_color(c_black);
	draw_set_halign(fa_center);
	draw_set_font(fnt_default);
	draw_text(x + 1, y - obj_player_planet.sprite_height + 1, "Press E\nto go back to space!");

	draw_set_alpha(1);
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_font(fnt_default);
	draw_text(x + 1, y - obj_player_planet.sprite_height + 1, "Press E\nto go back to space!");
}