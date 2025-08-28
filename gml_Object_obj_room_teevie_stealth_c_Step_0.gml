if (con < 0)
    exit;

if (con == 0 && obj_mainchara.x >= 520 && global.interact == 0)
{
    con = 1;
    global.interact = 1;
    cutscene_master = scr_cutscene_make();
    scr_maincharacters_actors();
    te = actor_count + 1;
    te_actor = instance_create(946, 290, obj_actor_tenna);
    scr_actor_setup(te, te_actor, "tenna");
    te_actor.sprite_index = spr_tenna_communication;
    c_wait(15);
    c_sel(kr);
    c_walkdirect_speed(604, kr_actor.y, 12);
    c_sel(su);
    c_walkdirect_speed(604, su_actor.y, 12);
    c_sel(ra);
    c_walkdirect_speed(604, ra_actor.y, 12);
    c_pannable(1);
    c_pan_wait(camerax() + 400, cameray(), 60);
    c_wait(15);
    c_sel(te);
    c_imageindex(1);
    c_shakeobj();
    c_msgside("bottom");
    c_speaker("tenna");
    c_msgsetloc(0, "* WHAT!? She ROLLED OVER in her SLEEP!?/", "obj_room_teevie_stealth_c_slash_Step_0_gml_40_0");
    c_msgnextloc("* Did you try the CLASSICAL MUSIC CHANNEL like I SAID!?/", "obj_room_teevie_stealth_c_slash_Step_0_gml_41_0");
    c_msgnextloc("* You know she'll be in GRAVE DANGER if she's AWAKE for this^1, right!?/%", "obj_room_teevie_stealth_c_slash_Step_0_gml_42_0");
    c_talk();
    c_wait_box(1);
    c_var_instance(te_actor, "communication", 1);
    c_imageindex(0);
    c_wait_box(2);
    c_tenna_sprite(1558);
    c_tenna_preset(15);
    c_wait_talk();
    c_wait(30);
    c_tenna_sprite(741);
    c_imageindex(1);
    c_shakeobj();
    c_wait(15);
    c_speaker("tenna");
    c_msgsetloc(0, "* ..^1. what!? You QUIT!? You can't QUIT!!^1! RAMB!!!/%", "obj_room_teevie_stealth_c_slash_Step_0_gml_65_0");
    c_talk_wait();
    c_wait(15);
    c_tenna_preset(0);
    c_emote("!", 30, 30, -190);
    c_snd_play(283);
    c_var_instance(te_actor, "communication", 0);
    c_wait(30);
    c_imageindex(0);
    c_wait(30);
    c_tenna_preset(15);
    c_wait(30);
    c_tenna_preset(12);
    c_wait(15);
    c_lerp_var_instance(te_actor, "x", te_actor.xstart, te_actor.xstart + 740, 30, 3, "out");
    c_speaker("tenna");
    c_msgsetloc(0, "* ARRRGH^1, I KNEW HE WAS A GOOD-FOR-NOTHING!!!/%", "obj_room_teevie_stealth_c_slash_Step_0_gml_89_0");
    c_talk_wait();
    c_wait(60);
    c_sel(kr);
    c_walkdirect_speed(828, 295, 4);
    c_wait(20);
    c_sel(su);
    c_facing("susieunhappy");
    c_walkdirect_speed(756, 280, 4);
    c_wait(20);
    c_sel(ra);
    c_facing("ralseiunhappy");
    c_walkdirect_speed_wait(692, 285, 4);
    c_wait(30);
    c_msgside("top");
    c_speaker("susie");
    c_msgsetloc(0, "\\E0* Damn^1, Kris^1, I don't know what's going on^1, but.../", "obj_room_teevie_stealth_c_slash_Step_0_gml_112_0");
    c_msgnextloc("\\EO* We gotta hurry./%", "obj_room_teevie_stealth_c_slash_Step_0_gml_113_0");
    c_talk_wait();
    c_wait(15);
    c_panobj(kr_actor, 20);
    c_wait(21);
    c_wait(15);
    c_sel(kr);
    c_facing("d");
    c_pannable(0);
    c_actortokris();
    c_actortocaterpillar();
    c_terminatekillactors();
}

if (con == 1 && !d_ex() && !i_ex(obj_cutscene_master))
{
    con = -1;
    global.facing = 0;
    global.interact = 0;
    scr_flag_set(1236, 1);
}
