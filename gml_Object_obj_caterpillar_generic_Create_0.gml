scr_depth();
image_speed = 0;
walk = 0;
fun = 0;
follow = 1;
runmove = 0;
dir = 0;
walkbuffer = 0;
walktimer = 0;
name = "susie";
targetdist = 12;
daddy = 1185;
pd = daddy.dsprite;
pr = daddy.rsprite;
pl = daddy.lsprite;
pu = daddy.usprite;
facing = 0;
allowup = true;
allowdown = true;
allowleft = true;
allowright = true;
memory = 75;

for (i = 0; i < memory; i += 1)
{
    remx[i] = daddy.x;
    remy[i] = daddy.y;
    sliding[i] = 0;
    special[i] = 0;
}

init = 0;
forget = 0;
ignoredepth = 0;
halign = 0;
valign = 0;
interpolate = false;
init = 0;
doresetanim = true;
resetanim = 0;
resetanimtarget = 4;
flip = false;
