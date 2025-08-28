depth = 10000 - y;

with (obj_susiezilla_gamecontroller)
{
    var sourcedude = other.id;
    
    if (gameover)
    {
        other.speed = 0;
        other.image_speed = 0;
        
        with (obj_script_delayed)
        {
            if (target == sourcedude)
                instance_destroy();
        }
        
        with (obj_lerpvar)
        {
            if (target == sourcedude)
                instance_destroy();
        }
        
        other.gameover = true;
        exit;
    }
}

bobble++;

if (canhit == true && !i_ex(myhitbox))
{
    myhitbox = instance_create(x, y, obj_susiezilla_activehitbox);
    myhitbox.sprite_index = spr_whitepx;
    myhitbox_xoffset = -24;
    myhitbox_yoffset = -64;
    myhitbox.image_yscale = 48;
    myhitbox.image_xscale = 40;
    myhitbox.depth = depth - 20;
    myhitbox.image_blend = c_yellow;
    myhitbox.daddy = id;
    myhitbox.visible = false;
}

if (i_ex(myhitbox))
{
    if (!canhit || ropeheight != 0)
        safe_delete(myhitbox);
}

if (hitstop <= 0)
{
    fakevspeed += fakegravity;
    fakeheight += fakevspeed;
    
    if (fakeheight >= maxheight)
    {
        fakevspeed = 0;
        fakeheight = maxheight;
        
        if (abs(hspeed) < 6)
            canhit = 0;
    }
    
    if (fakeheight < maxheight || state == states.dead)
        friction = 0;
    else
        friction = fric_var;
    
    if (state == states.advance)
    {
        state_timer++;
        
        if (state_timer == 1)
        {
            lx = 0;
            rx = 1280;
            
            with (obj_susiezilla_gamecontroller)
            {
                lx = xorig;
                rx = xorig + width;
            }
            
            if (x < obj_susiezilla_player.myxcenter)
            {
                remfacing = 1;
                facing = 1;
                desx = max(lx + 12, obj_susiezilla_player.myxcenter - (96 + irandom(24)));
            }
            else
            {
                remfacing = 0;
                facing = 0;
                desx = min(rx - 12, obj_susiezilla_player.myxcenter + (96 + irandom(24)));
            }
            
            desy = clamp(obj_susiezilla_player.myycenter + 58 + irandom_range(-24, 24), 200, 384);
        }
        
        if (state_timer > 1)
        {
            scr_obj_movetowards_point(desx, desy, clamp(point_distance(x, y, desx, desy) * 0.25, 0, 8));
            
            if (point_distance(x, y, desx, desy) <= 15)
            {
                speed = 0;
                fakevspeed = 0;
                state = states.attack;
                state_timer = 0;
                
                if (nerf)
                    state_timer = -10;
            }
        }
    }
    
    if (state == states.attack)
    {
        facing = remfacing;
        flash--;
        state_timer++;
        
        if (state_timer == 1)
        {
            flash = 10;
            snd_stop(snd_swing);
            snd_play_pitch(snd_swing, 1.6);
            
            if (facing == 1)
                hspeed = -8;
            else
                hspeed = 8;
            
            fric_var = 1.55;
        }
        
        if (state_timer == 14)
        {
            flash = 0;
            kickactive = true;
            ds_list_clear(hit_list);
            sprite_index = s_spin;
            image_speed = 0.5;
            direction = point_direction(x, y, obj_susiezilla_player.x, obj_susiezilla_player.y + 90);
            speed = 20;
            
            if (nerf)
                speed = 16;
            
            fric_var = 0.7;
            state = states.away;
            state_timer = 0;
        }
    }
    
    if (state == states.away)
    {
        state_timer++;
        
        if (state_timer >= 10)
            kickactive = 0;
        
        if (state_timer > 0)
        {
            if (speed < 1)
            {
                kickactive = false;
                fric_var = 0.85;
                desx = x;
                sprite_index = s_idle;
                image_speed = 0.25;
                state = states.advance;
                temp_counter = false;
                state_timer = irandom_range(-10, 0);
            }
        }
    }
    
    if (state == states.dead && state_timer == 0)
    {
        state_timer++;
        
        if (abs(hspeed) > 8)
        {
            snd_stop(snd_punchmed);
            snd_play_pitch(snd_punchmed, 0.65);
            
            for (var i = 0; i < 4; i++)
            {
                dust = scr_dark_marker((x - 20) + (i * 10), y, spr_dust1);
                dust.depth = depth - 10;
                dust.vspeed = -4 - irandom(2) - (abs(hspeed) / 4);
                dust.gravity = 0.5;
                dust.image_speed = 0.5;
                dust.image_xscale = 2 + random_range(-0.2, 0);
                dust.image_xscale = dust.image_yscale;
                scr_doom(dust, 10);
                dust.hspeed = -4 + (i * 2) + (hspeed / 8);
                dust.friction = 0.85;
            }
        }
        else
        {
            snd_stop(snd_punchmed);
            snd_play_pitch(snd_punchmed, 0.8);
        }
    }
    
    if (kickactive)
    {
        var tempmask = obj_susiezilla_player.mask_index;
        obj_susiezilla_player.mask_index = spr_susiezilla_susie_hit_mask;
        var _hit = ds_list_create();
        collision_rectangle_list(x - 32, y + 14, x + 32, y - 22, 1534, false, true, _hit, false);
        obj_susiezilla_player.mask_index = tempmask;
        
        for (a = 0; a < ds_list_size(_hit); a++)
        {
            if (ds_list_find_index(hit_list, ds_list_find_value(_hit, a).id) != -1)
                continue;
            
            ds_list_add(hit_list, ds_list_find_value(_hit, a).id);
            ds_list_find_value(_hit, a).take_hit(facing, damage, knockback);
            snd_stop(snd_punchmed);
            snd_play_pitch(snd_punchmed, 0.75);
        }
        
        ds_list_destroy(_hit);
    }
    
    var lx = 0;
    var rx = 1280;
    var ly = 0;
    
    with (obj_susiezilla_gamecontroller)
    {
        lx = xorig;
        rx = xorig + width;
        ly = yorig;
    }
    
    if (x <= (lx + 10))
    {
        x = lx + 10;
        hspeed = -hspeed / 2;
    }
    
    if (x >= (rx - 10))
    {
        x = rx - 10;
        hspeed = -hspeed / 2;
    }
    
    if (y <= (ly + 200))
    {
        y = ly + 200;
        vspeed = -vspeed / 2;
    }
    
    hitdir = direction;
    hitspeed = speed;
}

hitstop--;

if (hitstop == 0)
{
    canhit = 1;
    speed = memspeed;
    direction = memdir;
    fakegravity = 1;
    hitstop = -1;
}

if (hitstop > 0)
{
    kickactive = false;
    flash = 0;
}

if (abs(hspeed) > fastestspeed)
    fastestspeed = abs(hspeed);

myxcenter = x - 6;
myycenter = (y - 34) + fakeheight;
