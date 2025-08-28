if (freeze)
    exit;

with (scr_fire_bullet(x, y, 1407, 0, 2, 4688))
{
    image_speed = 0.25;
    gravity_direction = 0;
    friction = -0.05;
    
    if (i_ex(obj_volumeup))
    {
        image_xscale = 2;
        image_yscale = 2;
        grazepoints += 1;
    }
}

with (scr_fire_bullet(x + 8, y, 1407, 0, 3, 4688))
{
    image_speed = 0.25;
    gravity_direction = 0;
    friction = -0.05;
    
    if (i_ex(obj_volumeup))
    {
        image_xscale = 2;
        image_yscale = 2;
        grazepoints += 1;
    }
}

with (scr_fire_bullet(x, y, 1407, 180, 2, 4688))
{
    image_speed = 0.25;
    gravity_direction = 180;
    friction = -0.05;
    
    if (i_ex(obj_volumeup))
    {
        image_xscale = 2;
        image_yscale = 2;
        grazepoints += 1;
    }
}

with (scr_fire_bullet(x - 8, y, 1407, 180, 3, 4688))
{
    image_speed = 0.25;
    gravity_direction = 180;
    friction = -0.05;
    
    if (i_ex(obj_volumeup))
    {
        image_xscale = 2;
        image_yscale = 2;
        grazepoints += 1;
    }
}

active = false;
alarm[3] = 8;
