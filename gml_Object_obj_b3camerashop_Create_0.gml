image_alpha = 0;
active = false;
init = 0;
con = 0;
timer = 0;
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
depth = 999995;
timer = 0;
drawtext = true;
texttimer = 0;
textcomplete = false;
lancer1 = instance_create(x, y, obj_board_pickup);
lancer1.type = "lancer";

with (lancer1)
    setxy_board(1456, 1376);

pippins = instance_create(x, y, obj_board_b3camerashop_pippins);

with (pippins)
    setxy_board(1344, 1472);

lancer2 = instance_create(x, y, obj_board_pickup);
lancer2.type = "lancer";

with (lancer2)
    setxy_board(1568, 1472);

camera = instance_create(x, y, obj_board_pickup);
camera.type = "camera";

with (camera)
    setxy_board(1456, 1472);

camerastring = stringsetloc("CAMERA", "obj_b3camerashop_slash_Create_0_gml_44_0");
lancerstring = stringsetloc("LANCER", "obj_b3camerashop_slash_Create_0_gml_45_0");
shopstring = "";
visitinit = 0;
sndpause = 0;
string1 = stringsetloc("WELCOME! MY STORE#IS FREE TO FRIENDS!", "obj_b3camerashop_slash_Create_0_gml_52_0");
string2 = stringsetloc("HO HO! I'VE ALWAYS#WANTED ONE OF THOSE.", "obj_b3camerashop_slash_Create_0_gml_53_0");
pipstring1 = stringsetloc("HELP!", "obj_b3camerashop_slash_Create_0_gml_55_0");
pipstring2 = stringsetloc("SUCKER", "obj_b3camerashop_slash_Create_0_gml_56_0");
pipstring = pipstring1;
freestring = stringsetloc("FREE", "obj_b3camerashop_slash_Create_0_gml_59_0");
string2said = 0;
goodtalk = 0;
goodtimer = 0;
susietalk = 0;
piptalk = 0;
