if (instance_number(obj_screen_channel_change) > 1)
{
    debug_print("WARNING: more than one channel change object exists!!");
    instance_destroy();
    exit;
}

depth = 49000;
strength = 0;
active = false;
screen_sprite = -4;
old_screen_sprite = -4;
screen_surf = 0;
old_screen_surf = 0;
siner = 0;
helix = false;
wrap_around = true;
strength = 200;
timer = 0;
lifetime = 7;
noise_sprite = 3310;
scan_x = 0;
scroll_speed = 5;
scroll_dir = randomsign();
infinite = false;
init = false;
scroll = false;
shader = true;
precise = true;
static_noise = -1;
safe_mode = false;
siner = 0;
multa = 20;
multb = 30;
shader_check = 0;
draw_end = true;
use_surface = false;
channel_shader = use_surface ? 7 : 0;
sprite_uvs = sprite_get_uvs(noise_sprite, 0);
perlin_stage = shader_get_sampler_index(channel_shader, "perlin_texture_page");
manual = false;
silent = false;
shuffle = true;
is_finished = false;
