attacktype = 0;
con = 0;
btimer = 0;
siner = 0;
type = 0;
laninobulletsprite = 0;
elninabullesprite = 0;
element = 5;
extrabulletrate = global.elninalosscount;

if (i_ex(obj_elnina_lanino_controller) && obj_elnina_lanino_controller.turns < 7)
{
    var _forecast = obj_elnina_lanino_controller.forecasts[0];
    laninobulletsprite = _forecast[1];
    elninabullesprite = _forecast[2];
}

facing[0] = 1;
facing[1] = -1;
favored = 0;
shottimer[0] = 0;
shottimer[1] = 0;
dummy = false;
encounterno = global.encounterno;
bulletcount = 0;
firebulletcount = 2000;
bs[0] = 429;
bs[1] = 3812;
bs[2] = 4150;
bs[3] = 4065;
bs[4] = 4417;
bs[5] = 1359;
ms[0][0] = 472;
ms[0][1] = 2176;
ms[0][2] = 3561;
ms[0][3] = 187;
ms[0][4] = 4196;
ms[0][5] = 2807;
ms[0][6] = 539;
ms[0][7] = 1126;
ms[1][0] = 2069;
ms[1][1] = 4612;
ms[1][2] = 714;
ms[1][3] = 4573;
ms[1][4] = 4261;
ms[1][5] = 4393;
ms[1][6] = 266;
ms[1][7] = 2595;
