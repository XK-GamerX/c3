if (place_meeting(x, y, obj_board_enemy_deer_ice_spell))
{
    instance_create(x, y, obj_board_enemydefeatsplash);
    snd_stop(snd_board_damage);
    snd_play(snd_board_damage);
    instance_destroy();
    exit;
}

timer++;

if (timer == 5)
    active_hitbox = true;

if (timer == 120)
    instance_destroy();

updatetimer++;

if (updatetimer == 3)
    updatetimer = 0;
else
    exit;

for (i = 5; i > 0; i -= 1)
{
    remx[i] = remx[i - 1];
    remy[i] = remy[i - 1];
}

remx[0] = x;
remy[0] = y;
x += lengthdir_x(spd, direction);
y += lengthdir_y(spd, direction);
