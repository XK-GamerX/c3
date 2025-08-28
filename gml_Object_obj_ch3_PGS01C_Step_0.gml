if (con == 0 && obj_mainchara.x > 1315 && obj_mainchara.y >= 810 && !d_ex())
{
    con = 1;
    alarm[0] = 1;
    global.interact = 1;
}

if (con == 2)
{
    con = 3;
    cutscene_master = scr_cutscene_make();
    scr_maincharacters_actors();
    global.facing = 0;
    c_pannable(1);
    c_pan(1250, cameray(), 60);
    c_sel(kr);
    c_walkdirect(1400, scr_even(kr_actor.y - 20), 30);
    c_sel(su);
    c_walkdirect(1300, scr_even(su_actor.y), 30);
    c_sel(ra);
    c_walkdirect(1600, scr_even(su_actor.y + 5), 90);
    c_var_instance(id, "noskip", true);
    c_msgside("top");
    c_msgzurasu(1);
    c_speaker("ralsei");
    c_msgsetloc(0, "\\E6* I..^1./%", "obj_ch3_PGS01C_slash_Step_0_gml_36_0");
    c_talk();
    c_wait(110);
    c_wait_talk();
    c_var_instance(id, "noskip", false);
    c_sel(ra);
    c_sprite(spr_ralsei_walk_down_unhappy);
    c_halt();
    c_wait(60);
    c_sprite(spr_ralsei_walk_left_unhappy);
    c_sel(su);
    c_sprite(spr_susie_surprised_subtle_right);
    c_sel(ra);
    c_sprite(spr_ralsei_head_down_sad_left);
    c_msgzurasu(1);
    c_speaker("ralsei");
    c_msgsetloc(0, "\\E8* I..^1. don't think I could./%", "obj_ch3_PGS01C_slash_Step_0_gml_57_0");
    c_talk_wait();
    c_wait(60);
    c_sel(su);
    c_autowalk(0);
    c_sprite(spr_susie_head_scratch_dw);
    c_imagespeed(0.15);
    c_addxy(0, -5);
    c_msgzurasu(1);
    c_speaker("susie");
    c_msgsetloc(0, "\\EN* Heh^1, yeah^1, I mean^1, it was.../", "obj_ch3_PGS01C_slash_Step_0_gml_72_0");
    c_msgnextloc("\\ES* The Festival's kinda stupid^1, y'know^1? I mean^1, Obviously./", "obj_ch3_PGS01C_slash_Step_0_gml_73_0");
    c_msgnextloc("\\ED* Just..^1. uh.../", "obj_ch3_PGS01C_slash_Step_0_gml_74_0");
    c_msgnextloc("\\EN* I mean^1, we don't even have to play any games./", "obj_ch3_PGS01C_slash_Step_0_gml_75_0");
    c_msgnextloc("\\E2* We could..^1. just make a mess. Cause some trouble./%", "obj_ch3_PGS01C_slash_Step_0_gml_76_0");
    c_talk();
    c_wait_box(1);
    c_sel(su);
    c_sprite(spr_susie_walk_back_arm);
    c_addxy(0, 5);
    c_halt();
    c_wait_box(2);
    c_sel(su);
    c_imagespeed(0.25);
    c_walkdirect_wait(1355, su_actor.y, 16);
    c_halt();
    c_wait_box(3);
    c_sel(su);
    c_imagespeed(0.25);
    c_walkdirect_wait(1440, su_actor.y, 16);
    c_halt();
    c_wait_box(4);
    c_sel(su);
    c_imagespeed(0.25);
    c_walkdirect_wait(1460, su_actor.y, 10);
    c_halt();
    c_wait_talk();
    c_sel(su);
    c_halt();
    c_wait(60);
    c_sel(su);
    c_autowalk(1);
    c_walkdirect_wait(1480, su_actor.y, 16);
    c_halt();
    c_speaker("susie");
    c_msgsetloc(0, "\\ED* Just.../", "obj_ch3_PGS01C_slash_Step_0_gml_116_0");
    c_msgnextloc("\\EN* I dunno^1, could be..^1. fun if you.../", "obj_ch3_PGS01C_slash_Step_0_gml_117_0");
    c_msgnextloc("\\ET* ..^1. just went^1, you know?/%", "obj_ch3_PGS01C_slash_Step_0_gml_118_0");
    c_talk();
    c_wait_box(1);
    c_sel(su);
    c_imagespeed(0.25);
    c_walkdirect_wait(1500, su_actor.y, 16);
    c_halt();
    c_wait_box(2);
    c_sel(su);
    c_sprite(spr_susie_look_down_right_smile);
    c_halt();
    c_wait_talk();
    c_wait(30);
    c_sel(ra);
    c_autowalk(0);
    c_sprite(spr_ralsei_walk_right_unhappy);
    c_speaker("ralsei");
    c_msgsetloc(0, "\\EQ* No^1, Susie..^1. I.../", "obj_ch3_PGS01C_slash_Step_0_gml_142_0");
    c_msgnextloc("\\E7* I... want to^1, I just.../%", "obj_ch3_PGS01C_slash_Step_0_gml_143_0");
    c_talk_wait();
    c_sel(ra);
    c_sprite(spr_ralsei_walk_down_unhappy);
    c_mus2("volume", 0, 60);
    c_wait(30);
    c_sprite(spr_ralsei_walk_down_sad);
    c_wait(30);
    c_sel(su);
    c_sprite(spr_susie_look_down_right);
    c_halt();
    c_speaker("ralsei");
    c_msgsetloc(0, "\\E8* I can't go./%", "obj_ch3_PGS01C_slash_Step_0_gml_163_0");
    c_talk_wait();
    c_wait(60);
    c_speaker("susie");
    c_msgsetloc(0, "\\ER* .../", "obj_ch3_PGS01C_slash_Step_0_gml_170_0");
    c_msgnextloc("\\ES* ..^1. um^1, did I say something weird?/", "obj_ch3_PGS01C_slash_Step_0_gml_171_0");
    c_facenext("ralsei", 26);
    c_msgnextloc("\\EQ* No^1! No^1, not at all^1, Susie!/", "obj_ch3_PGS01C_slash_Step_0_gml_173_0");
    c_msgnextloc("\\Ee* I'm happy to be invited by you^1, Susie^1, I am.../", "obj_ch3_PGS01C_slash_Step_0_gml_174_0");
    c_msgnextloc("\\Eb* It's just.../%", "obj_ch3_PGS01C_slash_Step_0_gml_175_0");
    c_talk();
    c_wait_box(3);
    c_sel(ra);
    c_sprite(spr_ralsei_smile_up);
    c_wait_box(4);
    c_sel(ra);
    c_sprite(spr_ralsei_walk_left_unhappy);
    c_halt();
    c_wait_talk();
    c_wait(30);
    c_sel(ra);
    c_sprite(spr_ralsei_walk_left_sad);
    c_sel(su);
    c_sprite(spr_susie_walk_right_dw_unhappy);
    c_speaker("ralsei");
    c_msgsetloc(0, "\\Ec* I'm a Darkner./%", "obj_ch3_PGS01C_slash_Step_0_gml_200_0");
    c_talk_wait();
    c_wait(30);
    c_sel(ra);
    c_sprite(spr_ralsei_walk_left_unhappy);
    c_wait(15);
    c_speaker("ralsei");
    c_msgsetloc(0, "\\Eb* I can't go to the Light World./", "obj_ch3_PGS01C_slash_Step_0_gml_212_0");
    c_msgnextloc("\\E8* Even if I..^1. wanted to./", "obj_ch3_PGS01C_slash_Step_0_gml_213_0");
    c_facenext("susie", "R");
    c_msgnextloc("\\ER* Uhh..^1. why?/%", "obj_ch3_PGS01C_slash_Step_0_gml_215_0");
    c_talk();
    c_wait_box(1);
    c_sel(ra);
    c_sprite(spr_ralsei_walk_left_sad);
    c_wait_box(3);
    c_sel(ra);
    c_sprite(spr_ralsei_walk_left_unhappy);
    c_wait_talk();
    c_sel(ra);
    c_sprite(spr_ralsei_walk_left_sad);
    c_speaker("ralsei");
    c_msgsetloc(0, "\\Ee* Because I..^1. Because we.../%", "obj_ch3_PGS01C_slash_Step_0_gml_236_0");
    c_talk_wait();
    c_wait(60);
    c_sel(ra);
    c_sprite(spr_ralsei_walk_down_unhappy);
    c_speaker("ralsei");
    c_msgsetloc(0, "\\E8* .../", "obj_ch3_PGS01C_slash_Step_0_gml_247_0");
    c_msgnextloc("\\Ea* Susie^1, it's..^1. hard for me to explain this^1, but.../%", "obj_ch3_PGS01C_slash_Step_0_gml_248_0");
    c_talk();
    c_wait_box(1);
    c_sel(su);
    c_sprite(spr_susie_look_down_right);
    c_wait_talk();
    c_var_lerp_instance(blackall, "image_alpha", 0, 1, 120);
    c_wait(180);
    c_waitcustom();
}

if (con == 3 && customcon == 1)
{
    con = 4;
    alarm[0] = 30;
    global.plot = 30;
    snd_free_all();
    room_goto(room_dw_nondescript_room);
}

if (con == 5)
{
    con = 6;
    c_waitcustom_end();
    c_pannable(1);
    c_panobj(kr_actor, 30);
    c_wait(31);
    c_pannable(0);
    c_sel(kr);
    c_facing("d");
    c_actortokris();
    c_actortocaterpillar();
    c_terminatekillactors();
}

if (con == 6 && !i_ex(obj_cutscene_master))
{
    global.interact = 0;
    global.facing = 0;
    global.plot = 30;
    con = 99;
}

if (noskip)
{
    with (obj_writer)
        skippable = 0;
}
