depth = -10000;
remstate = global.interact;
global.interact = 69420;
mpos = 0;
page = 0;

for (var i = 0; i < 10; i++)
    pageind[i] = 0;

con = 0;
cursound = "";
curvolume = 1;
curpitch = 1;
curdelay = 0;
curlooprate = -1;
curkillsnd = false;
curkillall = false;
curkillind = false;
curlifetime = -1;
complexsound = 0;
playsnd = 0;
sndcount = 0;
cursnd = 0;
siner = 0;

for (var i = 0; i < 10; i++)
{
    snd[i] = -1;
    pitch[i] = 1;
    delay[i] = 0;
    volume[i] = 1;
    looprate[i] = -1;
    killsnd[i] = false;
}

var soundcount = 0;

for (var i = 0; audio_exists(i); i++)
    soundName[i] = audio_get_name(i);

array_sort(soundName, true);
soundtotal = array_length(soundName);
ubuff = 0;
rbuff = 0;
lbuff = 0;
dbuff = 0;
