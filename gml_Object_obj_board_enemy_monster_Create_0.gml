scr_board_enemy_init();
bulletimer = choose(0, -10, 10);
spd = 3;
init = 0;
show_outline = false;
_sprIdle = 3378;
_sprAngry = 4600;
_sprIdleOutline = 2403;
_sprAngryOutline = 4593;
spearboss = false;
spearbosscon = 0;
delay = 0;

if (type == 1)
{
    spd = 3;
    type = 1;
    image_blend = c_yellow;
    sword_immunity_lv = 2;
}

if (type == 2)
{
    spd = 5;
    type = 2;
    image_blend = c_orange;
    sword_immunity_lv = 3;
}

if (type == 3)
{
    spd = 0;
    type = 0;
    state = "stationary";
}

if (room == room_board_dungeon_2 || room == room_board_dungeon_3 || (type == 0 && room == room_board_1_sword && obj_mainchara_board.swordlv > 1))
{
    image_speed = 0.2;
    spd = 3;
}

if (room == room_board_1_sword && obj_mainchara_board.swordlv == 1)
{
    image_speed = 0.1;
    spd = 2;
}

if (room == room_board_1_sword || room == room_board_2_sword)
{
    _sprIdle = 241;
    _sprAngry = 2465;
}

sprite_index = _sprIdle;
