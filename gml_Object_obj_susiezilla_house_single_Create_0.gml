image_speed = 0;
image_index = 0;
startinghealth = 1;
myhealth = startinghealth;
explo = 0;
iframes = 0;
drawshake = 0;
hitstop = -1;
scr_darksize();
myxcenter = x + 20;
myycenter = y + 20;
myhitscale = 2;
smoketimer = irandom(240);
explo = true;
myhealth = 0;
type = 0;
delay = 0;
siner = 0;
timer = 0;
a = 0;
b = 0;
minitenna1_x = 11;
minitenna1_y = 15;
minitenna2_x = 29;
minitenna2_y = 15;
minitenna3_x = 16;
minitenna3_y = 36;
minitenna_scale = 0.5;
tenna_index = 0;
expand = 0;
_path_position = 0;
dontsayperfect = false;
sprite_index = spr_susiezilla_house_rise;
scr_lerpvar("image_index", 0, 9, 18);
scr_script_delayed(scr_var, 19, "sprite_index", spr_susiezilla_house);
scr_script_delayed(scr_var, 19, "image_index", 0);
scr_script_delayed(scr_var, 19, "myhealth", 1);
scr_script_delayed(scr_var, 19, "explo", false);

if (room == room_dw_teevie_susiezilla)
{
    type = 99;
    solidmade = 0;
    scr_depth();
}

brokemefail = 0;
