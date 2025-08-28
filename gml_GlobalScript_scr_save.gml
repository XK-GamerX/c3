function scr_save()
{
    scr_saveprocess(global.filechoice);
    filechoicebk2 = global.filechoice;
    global.filechoice = 9;
    scr_saveprocess(9);
    global.filechoice = filechoicebk2;
    iniwrite = ossafe_ini_open("dr.ini");
    ini_write_string(scr_ini_chapter(global.chapter, global.filechoice), "Name", global.truename);
    ini_write_real(scr_ini_chapter(global.chapter, global.filechoice), "Level", global.lv);
    ini_write_real(scr_ini_chapter(global.chapter, global.filechoice), "Love", global.llv);
    ini_write_real(scr_ini_chapter(global.chapter, global.filechoice), "Time", global.time);
    ini_write_real(scr_ini_chapter(global.chapter, global.filechoice), "Date", date_current_datetime());
    ini_write_real(scr_ini_chapter(global.chapter, global.filechoice), "Room", scr_get_id_by_room_index(room));
    ini_write_real(scr_ini_chapter(global.chapter, global.filechoice), "InitLang", global.flag[912]);
    var uraboss = 0;
    
    if (global.chapter == 1)
    {
        if (global.flag[241] == 6)
            uraboss = 1;
        else if (global.flag[241] == 7)
            uraboss = 2;
    }
    else
    {
        uraboss = scr_get_secret_boss_result(global.chapter);
    }
    
    ini_write_real(scr_ini_chapter(global.chapter, global.filechoice), "UraBoss", uraboss);
    ini_write_string(scr_ini_chapter(global.chapter, global.filechoice), "Version", string(global.versionno));
    ossafe_ini_close();
    scr_store_ura_result(global.chapter, global.filechoice, uraboss);
    ossafe_ini_open("keyconfig_" + string(global.filechoice) + ".ini");
    
    for (i = 0; i < 10; i += 1)
        ini_write_real("KEYBOARD_CONTROLS", string(i), global.input_k[i]);
    
    for (i = 0; i < 10; i += 1)
        ini_write_real("GAMEPAD_CONTROLS", string(i), global.input_g[i]);
    
    ini_write_real("SHOULDERLB_REASSIGN", "SHOULDERLB_REASSIGN", obj_gamecontroller.gamepad_shoulderlb_reassign);
    ossafe_ini_close();
    ossafe_savedata_save();
}
