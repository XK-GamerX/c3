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
pippins = instance_create(x, y, obj_board_pippins_grabbable);

with (pippins)
    setxy_board(3376, 864);

depth = 999995;
timer = 0;
texttimer = 0;
textcomplete = false;
drawtext = true;
drawprices = 0;
bow = instance_create(x, y, obj_board_pickup);
bow.type = "ribbon";

with (bow)
    setxy_board(3296, 960);

deodorant = instance_create(x, y, obj_board_pickup);
deodorant.type = "deodorant";

with (deodorant)
    setxy_board(3456, 960);

bowtalk = 0;
bowtalktimer = 0;
bowtalk2 = 0;
deotalk = 0;
debugset = false;

if (scr_debug())
    debugset = true;

shopstring = "";
visitinit = 0;
sndpause = 0;
string1 = stringsetloc("TOUCH THE ITEM#TO WEAR IT!", "obj_b2fashionshop2_slash_Create_0_gml_53_0");
string2 = stringsetloc("YOU LOOK GREAT!#HEH, HEH!", "obj_b2fashionshop2_slash_Create_0_gml_54_0");
string3 = stringsetloc("GUESS I'M RETIRED.", "obj_b2fashionshop2_slash_Create_0_gml_55_0");
bowstring = stringsetloc("RIBBON", "obj_b2fashionshop2_slash_Create_0_gml_57_0");
deostring = stringsetloc("PIZZA#DEODORANT#(FOR NERDS)", "obj_b2fashionshop2_slash_Create_0_gml_58_0");
broken = false;
drawitanyways = true;
krisflip = 0;
fliptime = 0;
