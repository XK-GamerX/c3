if (!show_scribble)
    exit;

depth = 0;
var x_offset = 26;
var y_offset = 70;
gpu_set_blendenable(false);
gpu_set_colorwriteenable(false, false, false, true);
draw_set_alpha(0);
draw_rectangle(camerax() + 414 + x_offset, cameray() + 306 + 20 + y_offset, camerax() + 414 + 20 + x_offset, cameray() + 306 + 40 + y_offset, 0);
draw_set_alpha(1);
gpu_set_blendenable(true);
gpu_set_colorwriteenable(true, true, true, true);
gpu_set_blendmode_ext(7, bm_inv_dest_alpha);
gpu_set_alphatestenable(true);
draw_set_color(c_white);
draw_set_font(scr_84_get_font("mainbig"));
draw_text_transformed(camerax() + 414 + x_offset, cameray() + 306 + y_offset, "s", 1, 1, 0);
gpu_set_alphatestenable(false);
gpu_set_blendmode(bm_normal);
draw_line_width(camerax() + 422 + x_offset, cameray() + 326 + y_offset, ((camerax() + view_wport[0]) - 80) + x_offset, ((cameray() + view_hport[0]) - 82) + y_offset, 4);
