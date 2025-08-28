if (!spotlight_active)
    exit;

if (small_base_x < 0)
    small_base_x = camerax() + 210;

draw_set_alpha(bg_alpha);
draw_set_color(c_black);
ossafe_fill_rectangle(camerax(), cameray(), camerax() + view_wport[0], cameray() + view_hport[0], false);
draw_set_color(c_white);
draw_set_alpha(1);
gpu_set_blendenable(false);
gpu_set_colorwriteenable(false, false, false, true);
draw_set_alpha(0);
draw_triangle_color(small_base_x, y - 610, small_base_x - 40, y + 315, small_base_x + 40, y + 315, 16777215, 0, 0, false);
draw_ellipse(small_base_x - 40, y + 300, small_base_x + 40, y + 330, false);
draw_set_alpha(1);
gpu_set_blendenable(true);
gpu_set_colorwriteenable(true, true, true, true);
gpu_set_blendmode_ext(bm_reverse_subtract, bm_inv_dest_alpha);
draw_set_alpha(0);
draw_set_alpha(1);
gpu_set_blendmode(bm_normal);
gpu_set_blendmode(bm_add);
draw_set_alpha(0.5);
draw_triangle_color(small_base_x, y - 610, small_base_x - 40, y + 315, small_base_x + 40, y + 315, 16777215, 0, 0, false);
draw_set_alpha(0.25);
draw_ellipse(small_base_x - 40, y + 300, small_base_x + 40, y + 330, false);
draw_set_alpha(1);
draw_set_alpha(bg_alpha_2);
draw_triangle_color(small_base_x, y - 610, small_base_x - 40, y + 315, small_base_x + 40, y + 315, 16777215, 0, 0, false);
draw_set_alpha(bg_alpha_2 / 2);
draw_ellipse(small_base_x - 40, y + 300, small_base_x + 40, y + 330, false);
draw_set_alpha(1);
draw_set_alpha(bg_alpha_2);
draw_triangle_color(small_base_x, y - 610, small_base_x - 40, y + 315, small_base_x + 40, y + 315, 16777215, 0, 0, false);
draw_set_alpha(bg_alpha_2 / 2);
draw_ellipse(small_base_x - 40, y + 300, small_base_x + 40, y + 330, false);
draw_set_alpha(1);
gpu_set_blendmode(bm_normal);
