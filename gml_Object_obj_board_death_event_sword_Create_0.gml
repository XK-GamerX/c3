global.swordboardeath = 1;
dsprite = obj_mainchara_board.dsprite;
rsprite = obj_mainchara_board.rsprite;
usprite = obj_mainchara_board.usprite;
lsprite = obj_mainchara_board.lsprite;
hurtsprite = obj_mainchara_board.hurtsprite;
facing = 0;
face[0] = dsprite;
face[1] = rsprite;
face[2] = usprite;
face[3] = lsprite;
red = 6609;
timer = 0;
con = 0;
cblend1 = 16777215;
cblend2 = 16777215;
obj_gameshow_swordroute.screencolor = red;
depth = obj_board_controller.depth + 100;
sprite_index = dsprite;
image_speed = 0;
image_index = 0;
scr_darksize();
image_blend = c_black;
mus_volume(global.currentsong[1], 0, 5);

with (obj_board_enemy_parent)
    instance_destroy();
