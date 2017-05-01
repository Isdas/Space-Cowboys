depth = -10;

draw_self();
draw_set_font(fnt_default);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text_ext(bbox_left + 32, bbox_top + 32, string_hash_to_newline(myMessage), 16, maxLength);