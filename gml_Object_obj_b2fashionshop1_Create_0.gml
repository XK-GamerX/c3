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
    setxy_board(3376, 608);

depth = 999995;
timer = 0;
drawtext = true;
texttimer = 0;
textcomplete = false;
bow = instance_create(x, y, obj_board_pickup);
bow.type = "ribbon";

with (bow)
    setxy_board(3376, 704);

bowtalk = 0;
sutalktimer = 0;
shopstring = "";
visitinit = 0;
sndpause = 0;
string1 = stringsetloc("TOUCH THE ITEM#TO WEAR IT!", "obj_b2fashionshop1_slash_Create_0_gml_44_0");
string2 = stringsetloc("YOU LOOK GREAT!#HEH, HEH!", "obj_b2fashionshop1_slash_Create_0_gml_45_0");
string3 = stringsetloc("GUESS I'M RETIRED.", "obj_b2fashionshop1_slash_Create_0_gml_46_0");
string4 = stringsetloc("PLEASE LEAVE,#YOU SMELL SO BAD.", "obj_b2fashionshop1_slash_Create_0_gml_47_0");
bowstring = stringsetloc("RIBBON", "obj_b2fashionshop1_slash_Create_0_gml_49_0");
drawitanyways = true;
