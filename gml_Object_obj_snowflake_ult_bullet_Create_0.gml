scr_bullet_init();
target = obj_dbulletcontroller.target;
spin = 0;
spinspeed = 0;
image_alpha = 1;

if (!instance_exists(obj_heart))
    instance_destroy();

wall_destroy = 1;
bottomfade = 0;
grazepoints = 2;
timer = -16;
gigatimer = -64;
gigachange = 1;
ultratimer = -32;
radius = 0;
wall_destroy = 0;
y_anchor = y;
scr_darksize();
depth = obj_growtangle.depth - 2;
intensity = 0;
timerb = 0;
