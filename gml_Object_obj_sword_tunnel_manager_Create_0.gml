timer = -40 + irandom(10);
finishtimer = 0;
finishtimermax = 230;

if (obj_knight_enemy.difficulty == 3)
    finishtimermax = 250;

con = 0;
swordx = camerax() + camerawidth() + 20;
swordy = obj_growtangle.y;
swordxrel = 340;
swordyrel = 0;
sworddirection = 180;
swordcount = 0;
setcount = choose(2, 3, 4);
waitsetcount = choose(1, 2, 3);
movedirection = choose("up", "down");
tobymode = 0;
difficulty = 0;
tobyvolleymode = 0;
tobyvolleycount = 0;
tobyvolleyamount = 10 + irandom(6);
tobyvolleymodeinitspeed = 1;
stopsfxtimer = 0;
event_user(0);
instance_create(obj_knight_enemy.x, obj_knight_enemy.y, obj_knight_swordtunnelanim);
