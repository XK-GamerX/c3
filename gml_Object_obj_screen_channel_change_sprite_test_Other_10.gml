silent = true;
active = true;
timer = lifetime;

if (shuffle)
    scan_x = scr_wrap_new(scan_x + irandom_range(40, 440), 0, 479);
