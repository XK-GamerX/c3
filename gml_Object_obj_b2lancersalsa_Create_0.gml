image_alpha = 0;
active = false;
init = 0;
con = 0;
timer = 0;
siner = 0;
kris = 0;
susie = 0;
ralsei = 0;
kr_real = 0;
su_real = 0;
ra_real = 0;
tenna = 0;
suwalk = 0;
suwalktimer = 0;
visit = 0;
lancer = 0;
lancy = 284;
water = 0;
waterfloat = 0;
myblock = instance_create_board(x, y, 322);

with (myblock)
    setxy_board(4160, 1248);

myblock.visible = true;
myblock.sprite_index = spr_board_b2_lancerhint;
scr_darksize(myblock);
myblock.depth = 999990;
playdigsound = false;
digindex = 0;
suwalktimer = 0;
lanbub = 0;
solved = 0;
commentary = 0;
grayspring = 0;
drinkingit = 0;
depth = 999996;

for (var i = 0; i < 5; i++)
    goo[i] = scr_board_marker(x + (32 * (3 + i)), y + 160, 2621, 0.0625, 999998);
