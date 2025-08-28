event_inherited();
timer++;

if (interval > 0)
{
    if ((timer % interval) == 0)
    {
        var basedir = random(360);
        
        for (n = 3; n < 6; n++)
        {
            with (scr_fire_bullet(x, y, 1171, basedir + (120 * (n + (timer / interval))) + random(10), n + random(2), 4126))
            {
                updateimageangle = 1;
                image_angle = direction;
                gravity_direction = direction + 180;
                gravity = speed / 90;
                scr_lerpvar("gravity", gravity, 0, 30);
            }
        }
    }
    
    if ((timer % 30) == 0)
    {
        var basedir = random(360);
        
        for (n = 0; n < 15; n++)
        {
            with (scr_fire_bullet(x, y, 1171, basedir + (n * 24), 3 + ((n % 2) * 0.75) + random(0.3), 4126))
            {
                updateimageangle = 1;
                image_angle = direction;
            }
        }
    }
}
