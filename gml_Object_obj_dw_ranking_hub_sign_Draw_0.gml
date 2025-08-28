if (!init)
    exit;

margin = 4;
draw_set_font(fnt_main);
draw_set_alpha(0.5);
draw_set_color(c_black);
draw_sprite_ext(spr_pxwhite, 0, x + 10, y, 140, 68, 0, c_black, 0.5);
draw_set_alpha(1);
draw_set_color(c_white);
draw_set_halign(fa_center);
tx = 0;
kern = 2;

for (var i = 1; i <= string_length(txt); i += 1)
{
    ch = string_char_at(txt, i);
    _x_pos = x + 57 + tx;
    _y_pos = y + margin + 10;
    current_text = ch;
    draw_set_color(#21277C);
    draw_text_transformed(_x_pos + 2, _y_pos + 1, current_text, 1, 1, 0);
    draw_text_transformed(_x_pos - 2, _y_pos - 1, current_text, 1, 1, 0);
    draw_text_transformed(_x_pos, _y_pos + 1, current_text, 1, 1, 0);
    draw_text_transformed(_x_pos + 2, _y_pos, current_text, 1, 1, 0);
    draw_text_transformed(_x_pos, _y_pos - 1, current_text, 1, 1, 0);
    draw_text_transformed(_x_pos - 2, _y_pos, current_text, 1, 1, 0);
    draw_text_transformed(_x_pos + 2, _y_pos - 1, current_text, 1, 1, 0);
    draw_text_transformed(_x_pos - 2, _y_pos + 1, current_text, 1, 1, 0);
    draw_text_transformed(_x_pos + 2, _y_pos + 2, current_text, 1, 1, 0);
    draw_text_transformed(_x_pos - 2, _y_pos - 2, current_text, 1, 1, 0);
    draw_text_transformed(_x_pos, _y_pos + 2, current_text, 1, 1, 0);
    draw_text_transformed(_x_pos, _y_pos - 2, current_text, 1, 1, 0);
    draw_text_transformed(_x_pos + 2, _y_pos - 2, current_text, 1, 1, 0);
    draw_text_transformed(_x_pos - 2, _y_pos + 2, current_text, 1, 1, 0);
    draw_set_color(c_yellow);
    draw_text_ext_transformed_color(x + 57 + tx, y + margin + 10, ch, 4, 999, 1, 1, 0, 16777215, 16777215, 65535, 65535, 1);
    tx += string_width(ch);
    tx += kern;
}

var current_text = stringsetsubloc("~1-RANK", rank, "obj_dw_ranking_hub_sign_slash_Draw_0_gml_44_0");
var _x_pos = x + 80;
var _y_pos = y + margin + 10 + 10;
draw_set_color(#21277C);
draw_text_transformed(_x_pos + 2, _y_pos + 2, current_text, 2, 2, 0);
draw_text_transformed(_x_pos - 2, _y_pos - 2, current_text, 2, 2, 0);
draw_text_transformed(_x_pos, _y_pos + 2, current_text, 2, 2, 0);
draw_text_transformed(_x_pos + 2, _y_pos, current_text, 2, 2, 0);
draw_text_transformed(_x_pos, _y_pos - 2, current_text, 2, 2, 0);
draw_text_transformed(_x_pos - 2, _y_pos, current_text, 2, 2, 0);
draw_text_transformed(_x_pos + 2, _y_pos - 2, current_text, 2, 2, 0);
draw_text_transformed(_x_pos - 2, _y_pos + 2, current_text, 2, 2, 0);
draw_set_color(c_yellow);
draw_text_ext_transformed_color(x + 80, y + margin + 10 + 10, current_text, 4, 999, 2, 2, 0, 16777215, 16777215, 65535, 65535, 1);
draw_set_halign(fa_left);
draw_set_color(c_white);
