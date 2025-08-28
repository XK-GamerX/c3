function scr_healallitemspell(arg0)
{
    var __healAmount = scr_heal_amount_modify_by_equipment(arg0);
    scr_healall(__healAmount);
    
    for (i = 0; i < 3; i += 1)
    {
        with (global.charinstance[i])
        {
            ha = instance_create(x, y, obj_healanim);
            ha.target = id;
            dmgwr = scr_dmgwriter_selfchar();
            
            with (dmgwr)
            {
                delay = 8;
                type = 3;
                damage = __healAmount;
            }
            
            if (global.hp[global.char[myself]] >= global.maxhp[global.char[myself]])
            {
                with (dmgwr)
                    specialmessage = 3;
            }
            
            tu += 1;
        }
    }
    
    global.spelldelay = 20;
}
