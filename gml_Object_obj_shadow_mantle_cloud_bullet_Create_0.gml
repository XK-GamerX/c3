image_speed = 0.25;
image_xscale = 2;
image_yscale = 2;
timer = 0;
con = 0;
damage = 2;
mysolid = 0;
active_hitbox = true;
destroyonhit = false;

if (i_ex(obj_shadow_mantle_enemy))
    depth = obj_shadow_mantle_enemy.depth - 1;
else
    scr_depth_board();

for (i = 0; i < 5; i += 1)
{
    remx[i] = x;
    remy[i] = y;
}

krisonly = false;
