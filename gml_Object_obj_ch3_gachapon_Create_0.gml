con = -1;
timer = 0;
siner = 0;
dispense = 0;
selectedPrize = 0;
betPoints = 0;
superChanceBonusDrawAmount = 0;

for (i = 0; i < 26; i++)
{
    prizeitemid[i] = i;
    prizeballcolor[i] = 255;
    
    if (i >= 20)
        prizeballcolor[i] = 65535;
    
    prizesprite[i] = 4641;
    prizeimage[i] = 0;
    prizetype[i] = "item";
    prizespecialmessage[i] = 0;
    prizeavailable[i] = 1;
    prizeflag[i] = 0;
}

scr_itemget_anytype_text();
prizeitemid[0] = 34;
prizeitemtype[0] = "item";
prizeitemid[1] = 100;
prizeitemtype[1] = "points";
prizeitemid[2] = 8;
prizeitemtype[2] = "key";
prizeimage[2] = 1;
prizespecialmessage[2] = 1;
prizeballcolor[2] = 16711680;
prizeitemid[3] = 0;
prizeitemtype[3] = "none";
prizeimage[3] = 2;
prizespecialmessage[3] = 2;
prizeballcolor[3] = 32768;
prizeitemid[4] = 0;
prizeitemtype[4] = "none";
prizesprite[4] = 3735;
prizespecialmessage[4] = 3;
prizeballcolor[4] = 32768;
prizeflag[4] = 1222;
prizeitemid[5] = 3;
prizeitemtype[5] = "item";
prizeitemid[6] = 39;
prizeitemtype[6] = "item";
prizeitemid[7] = 34;
prizeitemtype[7] = "item";
prizeitemid[8] = 37;
prizeitemtype[8] = "item";
prizeitemid[9] = 25;
prizeitemtype[9] = "armor";
prizeitemid[10] = 33;
prizeitemtype[10] = "item";
prizeflag[10] = 1223;
prizespecialmessage[10] = 4;
prizeballcolor[10] = 16777215;
prizesprite[10] = 313;
prizeitemid[11] = 200;
prizeitemtype[11] = "points";
prizeitemid[12] = 50;
prizeitemtype[12] = "points";
prizeitemid[20] = 27;
prizeitemtype[20] = "armor";
prizeflag[20] = 1177;
prizeitemid[21] = 38;
prizeitemtype[21] = "item";
prizeflag[21] = 1178;
prizeitemid[22] = 29;
prizeitemtype[22] = "item";
prizeflag[22] = 1179;
prizeitemid[23] = 2;
prizeitemtype[23] = "item";
prizeflag[23] = 1180;
prizeitemid[24] = 26;
prizeitemtype[24] = "armor";
prizeflag[24] = 1181;
prizeitemid[25] = 101;
prizeitemtype[25] = "points";
prizeballcolor[25] = 65535;

for (i = 0; i < 25; i++)
{
    if (global.flag[prizeflag[i]] != 0)
    {
        if (global.flag[prizeflag[i]] == 1)
            prizeavailable[i] = 0;
    }
}

depth = 100000;
image_xscale = 2;
image_yscale = 2;
drawGachaBall = 0;
gachaBallSeparation = 0;
gachaBallXScale = 0;
gachaBallYScale = 0;
gachaBallX = 0;
gachaBallY = 0;
prizeX = 0;
prizeY = 0;
prizeXScale = 0;
prizeYScale = 0;
prizeImageBlend = 0;
selectedPrize = 0;
gachaAngle = 0;
