randmove = false;
movesleft = 1;
movingnow = 0;
movebuffer = -1;
stepstomove = 0;
dir = "null";
canmove = false;
image_speed = 0;
depth = 800000;
ignoredepth = 0;
facing = 0;
fun = 0;
wspeed = 4;
press_l = 0;
press_r = 0;
press_d = 0;
press_u = 0;
press_1 = 0;
press_2 = 0;
bkx = 0;
bky = 0;
bkxy = 0;
walkbuffer = 0;
walktimer = 0;
onebuffer = 0;
twobuffer = 0;
threebuffer = 0;
interactedobject = 0;
canfreemove = 1;
interactoverride = false;
cambuff = 0;
camera = false;
camwidth = 3;
camheight = 3;
mycam = 0;
takephoto = false;
swordbuffer = 0;
swordfacing = 0;
sword = false;
swordlv = 1;
xp = 0;
xptolevel = 3;

if (room == room_board_2_sword)
    xptolevel = 10;

if (room == room_board_dungeon_2)
    xptolevel = 4;

if (room == room_board_dungeon_3)
{
    swordlv = 3;
    xptolevel = 68;
}

battlemode = false;
quizmode = false;
facing = 0;
iframes = 0;
hitcon = 0;
hitdir = 0;
hitmove = 64;
remcolor = 16777215;
hurttimer = 0;
swordhitbox = -1;
atdoorway = false;
leftdoorway = false;
grab = 0;
grabcon = 0;
grabbuffer = 0;
grabbed = 0;
grabmarker = 0;
doagrab = false;
dsprite = spr_board_kris_walk_down;
rsprite = spr_board_kris_walk_right;
usprite = spr_board_kris_walk_up;
lsprite = spr_board_kris_walk_left;
hurtsprite = spr_board_kris_hurt;
dsprite_carry = 927;
rsprite_carry = 4594;
lsprite_carry = 3946;
usprite_carry = 4071;
dsprite_item = 4339;
myhealth = 999;
maxhealth = 12;
invincible = 0;
name = "kris";
scr_darksize();
init = 0;
controlled = obj_b1mailroom_intro;
kris = 0;
susie = 0;
ralsei = 0;
stoolforme = 0;
stool = 0;
goStoole = 0;
unstoole = 0;
stoolbuff = 0;
randommovetimer = 0;
monstersdefeated = 0;
candydroprate = 6;
path = path_add();
is_moving = false;
is_moving_timer = 0;
path_target_x = -1;
path_target_y = -1;
ralsei_target = 10;
forget = false;
path_end_facing = -1;
allow_diagonals = false;
grab_dir = -1;
susierecordstring = "";
susierecordcon = 0;
susierecordcount = 0;
susierecordsave = true;
recordsavex = x;
recordsavey = y;
cantleave = false;
nocamtransition = false;
graballpots = false;
graballpots_timer = 0;
graballpots_con = 0;
firstpotwait = 20;
chaseralsei = false;
runawayfromsusie = false;
runawayfromsusiecon = 0;
abouttoregaincontrol = false;
done = false;
xx = x;
yy = y;
boardgrid = true;

for (i = 0; i < 75; i += 1)
{
    remx[i] = 0;
    remy[i] = 0;
    facingdir[i] = 0;
}

follow = 0;

for (i = 0; i < 10; i += 1)
{
    ralx[i] = 0;
    raly[i] = 0;
}

blockerlist[0] = 322;
array_push(blockerlist, 544);
array_push(blockerlist, 576);
array_push(blockerlist, 1671);
grabbablelist[0] = 777;
array_push(grabbablelist, 692);
array_push(grabbablelist, 692);
array_push(grabbablelist, 361);
array_push(grabbablelist, 797);
array_push(grabbablelist, 1726);
array_push(grabbablelist, 1049);
array_push(grabbablelist, 1410);
array_push(grabbablelist, 162);
array_push(grabbablelist, 1681);
array_push(grabbablelist, 544);
boat = false;
switchbuff = 0;
switchchar = false;
hookshot = true;
hookbuff = 0;
hook = 0;
hookcon = 0;
forcehook = false;

if (room == room_board_dungeon_2 || room == room_board_dungeon_3 || room == room_shadowmantle || room == room_board_preshadowmantle || room == room_board_postshadowmantle)
    sword = true;

if (room != room_board_1)
    global.flag[1020] = 1;
else
    global.flag[1020] = 0;

sleepy = false;
sleeping = false;
sleepytimer = 0;
caninteract = false;
canbepickedup = true;
checkpoint = -4;
patherror2 = false;
debugstring = 0;
ribbon = false;
bowx = x;
bowy = y;
stink = false;
stinktimer = 0;
freeroam = false;
dontteam = false;
digfreeze = 0;
digcon = 0;
digtime = 0;
cry = 0;
crytime = 0;
crybuffer = 0;

if (room == room_board_postshadowmantle)
    freeroam = true;
