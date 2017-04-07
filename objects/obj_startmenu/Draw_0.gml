draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_font(fnt_default);
draw_set_color(c_white);

for(var i = 0; i < array_length_1d(menu); i++)
{
	draw_text(x + space, y + i * space, string(menu[i]));
}

draw_sprite(spr_select, 0, x + 16, y + mpos * space);
