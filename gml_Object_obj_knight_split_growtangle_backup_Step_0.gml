timer++;

if (con == 0)
{
    if (timer == 20)
    {
        timer = 0;
        con = 1;
        event_user(1);
        snd_play_x(snd_knight_boxbreak, 1, 1.1);
        snd_play(snd_chargeshot_fire);
        instance_create(x, y, obj_knight_lightorb);
        
        if ((obj_heart.y + 10) < obj_growtangle.y)
            heart_y = -1;
        else
            heart_y = 1;
    }
    
    if (timer == 20 && false)
    {
        snd_play_x(snd_knight_boxbreak, 1, 1.1);
        var _speed = 0;
        var _balance_top = 0;
        var _balance_bottom = 0;
        var _change = 0;
        event_user(0);
        event_user(1);
        
        if ((obj_heart.y + 10) < obj_growtangle.y)
            heart_y = -1;
        else
            heart_y = 1;
        
        snd_play(snd_chargeshot_fire);
        var _xstart = obj_growtangle.x - 66;
        var _b = -4;
        
        for (var _i = 0; _i < 14; _i++)
        {
            var _balance = ((_i % 2) == 0) ? _balance_top : _balance_bottom;
            
            if (_balance >= 3)
                _change = -1;
            else if (_balance <= -3)
                _change = 1;
            else
                _change = choose(1, -1);
            
            _speed = _change ? 6 : 2.5;
            
            if ((_i % 2) == 0)
                _balance_top += _change;
            else
                _balance_bottom += _change;
            
            var aa = choose(0, 1, 2, 3, 4, 5, 6);
            var bb = choose(7, 8, 9, 10, 11, 12, 13);
            _b = instance_create(_xstart, y, obj_roaringknight_fountain_bullet);
            _b.speed = 0.01;
            _b.top_speed = _speed + random_range(-0.1, 0.1);
            _b.image_speed = _speed / 8;
            _b.depth = depth + 1;
            _b.image_xscale = 1;
            _b.image_yscale = 1;
            
            if ((_i % 2) == 1)
            {
                _b.direction = -90;
                _b.image_angle = 180;
            }
            else
            {
                _b.direction = 90;
            }
            
            scr_bullet_inherit(_b);
            child_bullet[count] = _b;
            count++;
            
            if ((_i % 2) == 1)
                _xstart += 22;
        }
    }
}

if (con == 1)
{
    if (timer == 7)
    {
        for (i = 0; i < count; i++)
        {
            if (i_ex(child_bullet[i]))
                child_bullet[i].depth = obj_growtangle.depth - 10;
        }
    }
    
    if (timer <= 30)
    {
        var _old_distance = distance;
        distance = scr_ease_out(timer / 30, 6) * 50;
        obj_heart.y += ((distance - _old_distance) * heart_y * 1.25);
    }
    else
    {
        event_user(0);
    }
}

var _dist = round(distance);
marker[0].y = y - _dist - 1;
marker[1].y = y + _dist + 3;

if (distance > 0)
    obj_growtangle.x = -9999;
else
    obj_growtangle.x = obj_growtangle.xstart;
