draw_sprite_ext(spr_dw_interstitial_doors, image_index, x, y, 2, 2, 0, c_white, 1);

if (!is_active)
    exit;

scr_draw_set_mask(true);
draw_sprite_ext(spr_dw_interstitial_doors_sign_bg, 0, x + 20, y + 28, 2, 2, 0, c_white, 1);
scr_draw_in_mask_begin();
var shadcolor = 3934982;
var shadalph = 0.65;
var shadoff = 2;
custom_text_timer++;
var coltime = 15;
var _col = merge_color(c_white, c_yellow, abs(sin(custom_text_timer / coltime)));
var _col2 = merge_color(c_yellow, c_white, abs(sin((custom_text_timer + (coltime / 2)) / coltime)));
ossafe_fill_rectangle_color(x, y + 20, x + 170, y + 60, _col2, _col2, _col, _col, false);
scr_draw_in_mask_end();
draw_sprite_ext(spr_dw_interstitial_doors_sign_outline, 0, x + 32, y + 22, 2, 2, 0, c_white, 1);
shader_set(shd_rainbow);
_uniUV = shader_get_uniform(shd_rainbow, "u_uv");
_uniTime = shader_get_uniform(shd_rainbow, "u_time");
_uniSpeed = shader_get_uniform(shd_rainbow, "u_speed");
_time -= bonus_color_speed;
var uv = sprite_get_uvs(spr_dw_interstitial_doors_sign, 0);
shader_set_uniform_f(_uniUV, uv[0], uv[2]);
shader_set_uniform_f(_uniSpeed, _speed);
shader_set_uniform_f(_uniTime, _time);
draw_sprite_ext(spr_dw_interstitial_doors_sign, 0, x + 34, y + 24, 2, 2, 0, c_white, 1);
shader_reset();
