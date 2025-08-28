if (active && scr_debug())
{
    if (obj_board_camera.shift == "none")
    {
        scr_board_objname();
        var count = 0;
    }
}

if (active && obj_board_camera.con == 0)
{
    timer++;
    
    if ((timer % 2) == 0 && timer > 0 && texttimer <= (string_length(shopstring) + 20))
    {
        texttimer++;
        
        if (texttimer < string_length(shopstring))
        {
            if (string_char_at(shopstring, texttimer) != " " && string_char_at(shopstring, texttimer) != "#")
                snd_play(snd_board_text_main);
        }
        
        if (texttimer == string_length(shopstring))
        {
            textcomplete = true;
            snd_play(snd_board_text_main_end);
        }
    }
    
    draw_set_font(scr_84_get_font("8bit"));
    draw_set_color(c_white);
    var currentstring = string_hash_to_newline(string_copy(shopstring, 1, texttimer));
    var txtwidth = string_width(string_hash_to_newline(shopstring));
    
    if (drawtext)
        draw_text_ext((320 - (round(txtwidth) / 2)) + 4, board_tiley(2) + 12, currentstring, 24, 640);
    
    if (i_ex(bow) && bow.con == 2 && (textcomplete || drawitanyways))
        draw_text((bow.x + 16) - (round(string_width(bowstring)) / 2), bow.y + 32 + 4, bowstring);
}
