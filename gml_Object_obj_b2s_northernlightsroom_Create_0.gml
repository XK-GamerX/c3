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
made = false;
drawtext = 0;
ttimer = 0;
texttimer = 0;
textcomplete = false;
shopstring = stringsetloc("THE KEY WAS#FORGOTTEN", "obj_b2s_northernlightsroom_slash_Create_0_gml_29_0");

if (global.flag[1055] == 1)
    shopstring = stringsetloc("GO TO#NORTHERN LIGHT", "obj_b2s_northernlightsroom_slash_Create_0_gml_31_0");

depth = 999960;
mycolorchanger = instance_create(x, y, obj_board_screenColorChanger);
mycolorchanger.image_blend = #C6DF71;

if (global.flag[1055] == 1)
    mycolorchanger.image_blend = #3600D4;

type = 0;
visitinit = 0;
sndpause = 0;
north = 0;
