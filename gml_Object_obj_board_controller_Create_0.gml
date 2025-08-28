depth = 99900;

if (scr_debug())
    scr_getchar(0);

setxy(-sprite_width * 4, -sprite_height * 4);
phase = 0;
boardinteract = 0;
subphase = 0;
drawmenu = 0;
menuside = 0;
menu = 0;
menuoptions[0] = 1;
menuoptionname[0][0] = "MOVE";
menuoptionname[0][1] = "ITEM";
menuoptionname[0][2] = " ";
menuoptionname[0][3] = " ";
menucoord[0] = 0;
inputbuffer = 0;
activetile = -1;
menooptionmem = 0;
global.darkzone = 1;
global.turnnumber = 1;
screen_surface = -1;
crt_surface = -1;
drawcrt = true;
crttimer = 0;
crt_glitch = 0;
crt_glitchstrength = 10;
chromStrength = 0.5;
crt_mod1 = 0;
violence = true;

if (room == room_board_1_sword)
    violence = false;

killedacatbefore = 0;
grid_init = 0;
global.cell_size = 32;
global.grid_width = room_width / global.cell_size;
global.grid_height = room_height / global.cell_size;
global.grid = mp_grid_create(0, 0, global.grid_width, global.grid_height, global.cell_size, global.cell_size);
pathfind_debug = false;
grid_reset = 0;
kris_object = -1;
susie_object = -1;
ralsei_object = -1;
blushamt = 0;
init = 0;
b3bscontroller = -1;
bosstree = 0;
global.flag[1116] = 0;
global.battlegrade[30] = "";
swapper = pal_swap_ext_init(9);
