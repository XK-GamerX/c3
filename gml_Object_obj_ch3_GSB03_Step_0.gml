if (con < 0)
    exit;

if (con == 0)
{
    con = 1;
    alarm[0] = 1;
    global.interact = 1;
    global.facing = 0;
}

if (con == 2)
{
    con = 3;
    cutscene_master = scr_cutscene_make();
    scr_maincharacters_actors();
    te = actor_count + 1;
    te_actor = instance_create(camerax() + view_wport[0] + 420, cameray() + 274, obj_actor_tenna);
    scr_actor_setup(te, te_actor, "tenna");
    c_sel(te);
    c_autodepth(0);
    c_depth(790000);
    te_actor.sprite_index = spr_tenna_pose_podium;
    te_actor.preset = 0;
    
    if (scr_debug() && keyboard_check(ord("F")))
    {
        scr_debug_print("save/load enabled");
        saveload = true;
    }
    
    if (saveload)
    {
        scr_cutscene_save_objects(audience_cheer, funometer);
        scr_cutscene_save_song();
    }
}

if (con == 3 || scr_cutscene_loaded())
{
    con = 4;
    c_sel(kr);
    c_facing("u");
    c_setxy(84, 177);
    c_sel(su);
    c_facing("u");
    c_setxy(166, 164);
    c_sel(ra);
    c_facing("u");
    c_setxy(250, 167);
    c_wait(60);
    c_speaker("ralsei");
    c_msgsetloc(0, "\\EH* Finally..^1. the game show is over!/%", "obj_ch3_GSB03_slash_Step_0_gml_64_0");
    c_talk_wait();
    c_wait(15);
    c_sel(kr);
    c_facing("r");
    c_sel(ra);
    c_sprite(spr_ralsei_pose);
    c_sel(su);
    c_facing("r");
    c_speaker("ralsei");
    c_msgsetloc(0, "\\E1* Even if that concert was a bit ROCKy..^1. playing music was fun!/", "obj_ch3_GSB03_slash_Step_0_gml_79_0");
    c_facenext("susie", 21);
    c_msgnextloc("\\EL* Yeah^1, kinda makes me think.../", "obj_ch3_GSB03_slash_Step_0_gml_81_0");
    c_msgnextloc("\\E7* We should have our own band for REAL!/%", "obj_ch3_GSB03_slash_Step_0_gml_82_0");
    c_talk();
    c_wait_box(2);
    c_sel(su);
    c_facing("r");
    c_wait_box(3);
    c_sel(su);
    c_sprite(spr_susie_pose);
    c_sel(ra);
    c_sprite(spr_ralsei_pose_look_left);
    c_wait_talk();
    c_mus("pause");
    c_sound_play(93);
    c_wait(120);
    c_mus("resume");
    c_sel(ra);
    c_sprite(spr_ralsei_pose);
    c_speaker("ralsei");
    c_msgsetloc(0, "\\EJ* Okay!/%", "obj_ch3_GSB03_slash_Step_0_gml_106_0");
    c_talk_wait();
    c_sel(su);
    c_facing("r");
    c_sel(ra);
    c_facing("r");
    c_sel(kr);
    c_facing("r");
    c_sel(te);
    c_sprite(spr_tenna_laugh_pose);
    c_sound_play(155);
    c_var_lerp_instance(te_actor, "x", camerax() + view_wport[0] + 420, 433, 15, -1, "out");
    c_tenna_preset(2);
    scr_funnytext_init(0, 0, 0, scr_84_get_sprite("spr_funnytext_board"), 0, 0);
    c_speaker("tenna");
    c_msgsetloc(0, "* Wow^1, folks^1! Looks like they've reached the end of our&FINAL \\O0^1!/%", "obj_ch3_GSB03_slash_Step_0_gml_132_0");
    c_talk_wait();
    c_wait(15);
    c_sel(te);
    c_autodepth(0);
    c_depth(99000);
    c_tenna_preset(0);
    c_var_instance(te_actor, "image_xscale", -2);
    c_tenna_sprite(4539);
    c_speaker("tenna");
    c_msgsetloc(0, "* It's sad to say goodbye^1, but when you gotta go..^1. you gotta go!/", "obj_ch3_GSB03_slash_Step_0_gml_148_0");
    c_msgnextloc("* MIKE^1, roll the credits...!/%", "obj_ch3_GSB03_slash_Step_0_gml_149_0");
    c_talk();
    c_wait_box(1);
    c_tenna_sprite(1558);
    c_var_instance(te_actor, "image_xscale", 2);
    c_wait_talk();
    c_tenna_preset(10);
    c_sel(kr);
    c_facing("d");
    c_sel(su);
    c_facing("d");
    c_sel(ra);
    c_autowalk(0);
    c_sprite(spr_ralsei_wave_start);
    c_flip("x");
    c_addxy(-8, 0);
    c_imagespeed(0.2);
    c_delaycmd(15, "sprite", spr_ralsei_wave_down);
    c_mus2("volume", 0, 15);
    c_wait(15);
    c_var_instance(id, "show_credits", true);
    c_wait(180);
    c_var_instance(id, "credits_stop", true);
    c_mus("free_all");
    c_tenna_preset(10);
    c_tenna_sprite(4298);
    c_shakeobj();
    c_sound_play(328);
    c_sel(kr);
    c_facing("r");
    c_sel(su);
    c_halt();
    c_sprite(spr_susie_shock_r);
    c_shakeobj();
    c_sel(ra);
    c_sprite(spr_ralsei_surprise_right);
    c_flip("x");
    c_shakeobj();
    c_var_instance(gameshow_screen, "switch_game_screen_target", "round_complete_2");
    c_var_instance(gameshow_screen, "screen_sub_state", "breaking");
    c_var_instance(gameshow_screen, "switch_game_screen", true);
    c_var_instance(te_actor, "image_xscale", 2);
    c_mus2("initloop", "newscast.ogg", 0);
    scr_funnytext_init(1, -10, 0, 1223, 0, 0);
    c_speaker("tenna");
    c_msgsetloc(0, "* STOP!!^1! \\O1^1!/%", "obj_ch3_GSB03_slash_Step_0_gml_215_0");
    c_talk_wait();
    c_wait(15);
    c_speaker("tenna");
    c_msgsetloc(0, "* Due to your SPEED^1, viewer donations have been POURING IN.../%", "obj_ch3_GSB03_slash_Step_0_gml_221_0");
    c_talk_wait();
    c_tenna_sprite(4099);
    c_wait(5);
    c_speaker("tenna");
    c_msgsetloc(0, "* And we have met the SPECIAL INCENTIVE!/%", "obj_ch3_GSB03_slash_Step_0_gml_232_0");
    c_talk_wait();
    c_var_instance(te_actor, "image_speed", 100);
    c_tenna_sprite(3120);
    c_sound_play(453);
    c_mus2("initloop", "berdly_audience.ogg", 0);
    c_var_instance(audience_cheer, "audience_active", true);
    c_var_instance(audience_cheer, "audience_show", true);
    c_wait(120);
    c_speaker("ralsei");
    c_msgsetloc(0, "\\EU* I..^1. Incentive?/%", "obj_ch3_GSB03_slash_Step_0_gml_250_0");
    c_talk_wait();
    c_tenna_sprite(201);
    c_sel(ra);
    c_autowalk(1);
    c_facing("d");
    c_sel(su);
    c_facing("d");
    c_var_instance(te_actor, "image_xscale", 2);
    scr_funnytext_init(2, -10, -14, scr_84_get_sprite("spr_funnytext_fun_o_meter"), 0, 0);
    var x_offset = (global.lang == "ja") ? -20 : 0;
    c_var_lerp_instance(funometer, "x", 640, 569 + x_offset, 12, 2, "out");
    c_var_instance(funometer, "fun", 0.9);
    c_speaker("tenna");
    c_msgsetloc(0, "* YES^1! The \\O2&doesn't lie^1! The viewers' voices are in...!/%", "obj_ch3_GSB03_slash_Step_0_gml_271_0");
    c_talk_wait();
    c_mus("free_all");
    scr_funnytext_init(3, -10, -14, 4487, 0, 0);
    c_speaker("tenna");
    c_msgsetloc(0, "* You've qualified for.../", "obj_ch3_GSB03_slash_Step_0_gml_278_0");
    c_msgnextloc("* The \\O3^1!!!/%", "obj_ch3_GSB03_slash_Step_0_gml_279_0");
    c_talk();
    c_wait_box(1);
    c_tenna_preset(8);
    c_tenna_sprite(3327);
    c_wait_box(2);
    c_var_lerp_to_instance(te_actor, "x", 493, 15, -1, "out");
    c_tenna_preset(31);
    c_tenna_sprite(2232);
    c_wait_talk();
    c_var_instance(gameshow_screen, "screen_sub_state", "bonus_board");
    c_sel(kr);
    c_facing("u");
    c_sel(su);
    c_facing("u");
    c_sel(ra);
    c_facing("u");
    c_sound_play(204);
    c_mus("free_all");
    c_mus2("initloop", "nes_intro_extended_part2.ogg", 0);
    c_mus2("volume", 0.7, 0);
    c_mus2("pitch", 1.2, 0);
    c_wait(60);
    c_sel(ra);
    c_facing("ralseiunhappy");
    c_facing("r");
    c_speaker("ralsei");
    c_msgsetloc(0, "\\EL* Err..^1. there's ANOTHER round...?/", "obj_ch3_GSB03_slash_Step_0_gml_323_0");
    c_facenext("susie", "2");
    c_msgnextloc("\\E2* I mean^1, yeah^1, it was FUN^1, but.../", "obj_ch3_GSB03_slash_Step_0_gml_325_0");
    c_msgnextloc("\\EK* We do kinda have an adventure to get back to.../", "obj_ch3_GSB03_slash_Step_0_gml_339_0");
    c_facenext("ralsei", "K");
    c_msgnextloc("\\EK* The DARK FOUNTAIN still needs to be sealed^1, too.../", "obj_ch3_GSB03_slash_Step_0_gml_341_0");
    c_facenext("susie", 3);
    c_msgnextloc("\\E3* Yeah^1, can we^1, uh^1, just pass? On the bonus round...?/%", "obj_ch3_GSB03_slash_Step_0_gml_331_0");
    c_talk();
    c_wait_box(2);
    c_sel(su);
    c_facing("r");
    c_wait_box(3);
    c_sel(su);
    c_facing("susieunhappy");
    c_facing("d");
    c_sel(kr);
    c_facing("r");
    c_wait_box(5);
    c_sel(ra);
    c_facing("ralseiunhappy");
    c_facing("r");
    c_sel(su);
    c_facing("r");
    c_tenna_preset(0);
    c_wait_talk();
    c_mus("free_all");
    c_tenna_preset(-1);
    c_sel(te);
    c_autowalk(0);
    c_sprite(spr_tenna_armsup_annoyed);
    c_var_instance(te_actor, "image_speed", 0.2);
    c_var_instance(audience_cheer, "audience_pause", true);
    c_speaker("tenna");
    c_msgsetloc(0, "* Pass? P..^1. Pass?/%", "obj_ch3_GSB03_slash_Step_0_gml_375_0");
    c_talk_wait();
    c_var_lerp_to_instance(te_actor, "x", 433, 15, -1, "out");
    c_tenna_sprite(4934);
    c_speaker("tenna");
    c_msgsetloc(0, "* You mean..^1. STOP PLAYING!?/", "obj_ch3_GSB03_slash_Step_0_gml_384_0");
    c_facenext("susie", 1);
    c_msgnextloc("\\E1* Yeah./%", "obj_ch3_GSB03_slash_Step_0_gml_386_0");
    c_talk_wait();
    c_tenna_preset(7);
    c_var_instance(funometer, "fun", 0.8);
    c_var_lerp_instance(te_actor, "image_yscale", 2, 1.5, 15, -1, "out");
    c_var_lerp_instance(te_actor, "image_xscale", 2, 1.5, 15, -1, "out");
    c_mus2("initloop", "ch3_tvtime.ogg", 0);
    c_mus2("pitch", 0.5, 15);
    c_speaker("tenna");
    c_msgsetloc(0, "* Well..^1. I mean..^1. If you want to!/%", "obj_ch3_GSB03_slash_Step_0_gml_402_0");
    c_talk_wait();
    c_snd_play(144);
    c_var_instance(gameshow_screen, "cancelled", true);
    c_var_instance(audience_cheer, "audience_hide_slow", true);
    c_sel(te);
    c_sprite(spr_tenna_sad_turned_a);
    c_var_instance(funometer, "fun", 0.75);
    c_speaker("tenna");
    c_msgsetloc(0, "* I mean^1, it was just gonna be a special board^1, but..^1. alright!/%", "obj_ch3_GSB03_slash_Step_0_gml_416_0");
    c_talk_wait();
    c_sprite(spr_tenna_sad_turned_b);
    c_var_instance(funometer, "fun", 0.7);
    c_speaker("tenna");
    c_msgsetloc(0, "* Mike^1! Tear down the board^1! Tear down the set!/%", "obj_ch3_GSB03_slash_Step_0_gml_425_0");
    c_talk_wait();
    c_tenna_preset(20);
    c_var_instance(funometer, "fun", 0.65);
    c_speaker("tenna");
    c_msgsetloc(0, "* Tear down my house!^1! Tear down my kids!!/%", "obj_ch3_GSB03_slash_Step_0_gml_434_0");
    c_talk_wait();
    c_sel(te);
    c_tenna_preset(0);
    c_tenna_sprite(4408);
    c_var_instance(te_actor, "xscale", 1.5);
    c_shakeobj();
    c_var_instance(funometer, "fun", 0.6);
    c_speaker("tenna");
    c_msgsetloc(0, "* Audience..^1. you're gonna have to go home!/%", "obj_ch3_GSB03_slash_Step_0_gml_447_0");
    c_talk_wait();
    c_sprite(spr_tenna_hooray);
    c_var_instance(te_actor, "image_index", 1);
    c_var_instance(te_actor, "image_speed", 0);
    c_shakeobj();
    c_var_instance(funometer, "fun", 0.5);
    c_speaker("tenna");
    c_msgsetloc(0, "* Please..^1. (sniff) make sure to check out our gift shop (sniff).../%", "obj_ch3_GSB03_slash_Step_0_gml_459_0");
    c_talk_wait();
    c_sel(te);
    c_var_lerp_to_instance(te_actor, "image_yscale", 1, 15, -1, "out");
    c_var_lerp_to_instance(te_actor, "image_xscale", 1, 15, -1, "out");
    c_tenna_preset(8);
    c_var_instance(funometer, "fun", 0.4);
    c_var_instance(te_actor, "image_index", 0);
    c_speaker("tenna");
    c_msgsetloc(0, "* (sniff) It's got..^1. (sniff) funny whirligigs.../%", "obj_ch3_GSB03_slash_Step_0_gml_472_0");
    c_talk_wait();
    c_wait(60);
    c_mus("pause");
    c_speaker("ralsei");
    c_msgsetloc(0, "\\EQ* Umm^1, Tenna^1, we're sorry to depress you^1, but.../", "obj_ch3_GSB03_slash_Step_0_gml_493_0");
    c_facenext("susie", "D");
    c_msgnextloc("\\ED* Look..^1. uh./", "obj_ch3_GSB03_slash_Step_0_gml_495_0");
    c_msgnextloc("\\ES* I guess if you REALLY want us to play it.../%", "obj_ch3_GSB03_slash_Step_0_gml_496_0");
    c_talk_wait();
    c_saveload_s(saveload);
    c_sel(te);
    c_var_instance(te_actor, "image_index", 1);
    c_speaker("tenna");
    c_msgsetloc(0, "* (sniff) ..^1. you'll play?/", "obj_ch3_GSB03_slash_Step_0_gml_499_0");
    c_facenext("susie", "S");
    c_msgnextloc("\\ES* Maybe just for a little bit?/%", "obj_ch3_GSB03_slash_Step_0_gml_501_0");
    c_talk();
    c_wait_box(2);
    c_sel(su);
    c_facing("d");
    c_wait_talk();
    c_wait(15);
    c_sel(su);
    c_facing("r");
    c_var_instance(gameshow_screen, "screen_state", "bonus_confirmed");
    c_mus("resume");
    c_mus2("pitch", 1.5, 15);
    c_sel(te);
    c_tenna_preset(0);
    c_tenna_sprite(2232);
    c_var_lerp_to_instance(te_actor, "image_yscale", 2, 15, -1, "out");
    c_var_lerp_to_instance(te_actor, "image_xscale", 2, 15, -1, "out");
    c_var_instance(funometer, "fun", 1);
    c_wait(15);
    c_var_instance(te_actor, "image_yscale", 2);
    c_var_instance(te_actor, "image_xscale", 2);
    c_tenna_preset(4);
    c_tenna_sprite(2232);
    c_speaker("tenna");
    c_msgsetloc(0, "* MARVELOUS!!^1! Mike^1, rebuild the set!^1! Rebuild my kids!!/%", "obj_ch3_GSB03_slash_Step_0_gml_540_0");
    c_talk_wait();
    c_sel(te);
    c_tenna_sprite(201);
    c_tenna_preset(18);
    c_speaker("tenna");
    c_msgsetloc(0, "* We are gonna have a GREAT show for you folks!^1! The best ever!!/", "obj_ch3_GSB03_slash_Step_0_gml_552_0");
    c_facenext("ralsei", "K");
    c_msgnextloc("\\EK* Can we change Susie's name yet?/", "obj_ch3_GSB03_slash_Step_0_gml_554_0");
    c_facenext("tenna", 0);
    c_msgnextloc("* No!^1! And now a WORM from our sponsors!!!/%", "obj_ch3_GSB03_slash_Step_0_gml_561_0");
    c_talk();
    c_wait_box(4);
    c_sound_play(269);
    c_var_instance(te_actor, "bounce", 1);
    c_var_instance(te_actor, "image_speed", 0);
    c_var_instance(te_actor, "sprite_index", spr_tenna_attack);
    c_var_instance(te_actor, "image_index", 0);
    c_var_instance(te_actor, "hspeed", 0);
    c_var_instance(te_actor, "friction", 0);
    c_sel(te);
    c_autodepth(0);
    c_depth(80000);
    c_jump(((camerax() + (view_wport[0] / 2)) - 10) + 10, cameray() + 300, 80, 15);
    c_sel(kr);
    c_facing("d");
    c_sel(su);
    c_facing("d");
    c_sel(ra);
    c_facing("d");
    c_wait(15);
    c_tenna_preset(0);
    c_tenna_sprite(4099);
    c_wait_talk();
    c_mus("free_all");
    c_saveload_l(saveload);
    c_sound_play(15);
    c_var_instance(id, "border_switch", true);
    c_var_instance(id, "word_display", true);
    c_wait(60);
    c_var_instance(id, "change_rooms", true);
    c_wait(90000);
    c_actortokris();
    c_actortocaterpillar();
    c_terminatekillactors();
}

if (change_rooms)
{
    change_rooms = false;
    global.interact = 0;
    global.plot = 150;
    con = 99;
    room_goto(room_dw_green_room);
}

if (con == 3 && !i_ex(obj_cutscene_master))
{
    global.interact = 0;
    global.facing = 0;
    global.plot = 150;
    con = 99;
}

if (show_credits)
{
    show_credits = false;
    snd_free_all();
    global.currentsong[0] = snd_init("dogcheck.ogg");
    global.currentsong[1] = mus_loop_ext(global.currentsong[0], 0.7, 1);
    
    if (i_ex(obj_ch3_GSA06_credits))
    {
        with (obj_ch3_GSA06_credits)
            instance_destroy();
    }
    
    credits = instance_create(0, 0, obj_ch3_GSA06_credits);
    credits.credits_speed = 2;
    credits.text_scroll = true;
}

if (credits_stop)
{
    credits_stop = false;
    
    with (credits)
    {
        credits_stop = true;
        scr_lerpvar("y_pos_base", y_pos_base, view_hport[0], 10);
    }
}

if (word_display)
{
    word_display = false;
    
    with (credits)
        rouxls_mode = true;
}

if (border_switch)
{
    border_switch = false;
    
    with (obj_border_controller)
        hide_border(1, 16777215);
}
