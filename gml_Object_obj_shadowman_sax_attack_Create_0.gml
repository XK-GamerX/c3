mypath = path_add();
init = false;
damage = 35;
grazepoints = 4;
childgraze = 4;
target = 0;
shootSpeed = 1;
timer = shootSpeed;
firedShots = 0;
bulletCount = 10;
progressLoop = 0;
attackWaitTime = 0.6;
pathLifetime = 1.2;
grow_Speed = 0.05;
fadeSpeed = 0.05;
special = 0;
aim_at_player = false;

with (obj_shadowman_sax_attack)
    aim_at_player = false;

aim_at_player = true;
sax_animation = -1;
animchange = 0;
draw_style = 3;
fancy_staff = true;
freeze = false;
snapshot = false;
surf = -1;
optimized_draw = true;
image_alpha = 1;
destroytime = 30;
