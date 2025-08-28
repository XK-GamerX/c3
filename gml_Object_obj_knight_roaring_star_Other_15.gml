if (active == 1)
{
    var _hitbox = (obj_heart.sprite_index == spr_dodgeheart_smaller_2px) ? 0 : 2;
    
    if (!scr_precise_hit(_hitbox))
        exit;
    
    if (i_ex(obj_knight_roaring2))
    {
        with (obj_knight_enemy)
            event_user(2);
    }
    else
    {
        if (target != 3)
            scr_damage();
        
        if (target == 3)
            scr_damage_all();
    }
    
    if (destroyonhit == 1)
        instance_destroy();
}
