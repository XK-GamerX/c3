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
    setxy_board(2224, 3680);

depth = 999995;
timer = 0;
drawtext = true;
texttimer = 0;
textcomplete = false;
lancer = instance_create(x, y, obj_board_store_key);
lancer.mytype = "lancer";

with (lancer)
    setxy_board(2224, 3792);

lancer.cost = 999;
bowtalk = 0;
sutalktimer = 0;
shopstring = "";
visitinit = 0;
sndpause = 0;
shopcon = 0;
string1 = stringsetloc("PLEASE BUY THIS BOY!#HE'S MAKING ME LOSE#MY MARBLES!", "obj_b2savelancer_slash_Create_0_gml_48_0");
string2 = stringsetloc("GUESS I'M#RETIRED NOW.", "obj_b2savelancer_slash_Create_0_gml_49_0");
string3 = stringsetloc("HUH? I FEEL LIKE#I EARNED LESS#THAN I THOUGHT.", "obj_b2savelancer_slash_Create_0_gml_50_0");
string4 = stringsetloc("WHAT?#WE GOT NOTHING.", "obj_b2savelancer_slash_Create_0_gml_51_0");
sutalk = 0;
drawitanyways = true;
