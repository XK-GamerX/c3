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
    global.facing = 0;
    cutscene_master = scr_cutscene_make();
    scr_maincharacters_actors();
    c_sel(kr);
    c_setxy(270, 220);
    c_facing("r");
    c_sel(su);
    c_autowalk(0);
    c_sprite(spr_susie_shiver_stand);
    c_imagespeed(0.2);
    c_setxy(200, 204);
    c_sel(ra);
    c_setxy(140, 209);
    c_facing("ralseiunhappy");
    c_facing("r");
    c_mus2("initloop", "wind_highplace.ogg", 0);
    c_mus2("volume", 0, 0);
    c_wait(1);
    c_mus2("volume", 1, 60);
    c_var_lerp_instance(blackall, "image_alpha", 1, 0, 60);
    c_wait(60);
    c_sel(su);
    c_autowalk(0);
    c_sprite(spr_susie_shiver_look);
    c_imagespeed(0.2);
    c_speaker("susie");
    c_msgsetloc(0, "\\EF* Damn^1, who turned on the AC!?/%", "obj_ch3_GSB05_slash_Step_0_gml_65_0");
    c_talk_wait();
    c_wait(30);
    c_speaker("susie");
    c_msgsetloc(0, "\\EG* Where the heck..^1. is this?/%", "obj_ch3_GSB05_slash_Step_0_gml_74_0");
    c_talk_wait();
    c_pannable(1);
    c_panobj(kr_actor, 30);
    c_wait(31);
    c_pannable(0);
    c_sel(kr);
    c_facing("d");
    c_sel(su);
    c_facing("r");
    c_halt();
    c_actortokris();
    c_actortocaterpillar();
    c_terminatekillactors();
}

if (con == 3 && !i_ex(obj_cutscene_master))
{
    global.interact = 0;
    global.facing = 0;
    global.flag[1228] = 1;
    debug_print("global.flag[1228]=" + string(global.flag[1228]));
    
    with (obj_savepoint)
        scr_lerpvar("image_alpha", 0, 1, 30);
    
    con = 20;
}

if (con == 20 && global.interact == 0)
{
    if (obj_mainchara.x >= 1120)
    {
        con = 21;
        alarm[0] = 1;
        global.interact = 1;
    }
}

if (con == 22)
{
    con = 27;
    alarm[0] = 30;
    tree_marker = scr_dark_marker(1920, -200, spr_dw_snow_zone_tree);
    
    with (tree_marker)
        scr_depth();
    
    cutscene_master = scr_cutscene_make();
    scr_maincharacters_actors();
    te = actor_count + 1;
    te_actor = instance_create(1616, cameray() - 20, obj_actor_tenna);
    scr_actor_setup(te, te_actor, "tenna");
    te_actor.sprite_index = spr_tenna_grasp;
    te_actor.preset = 0;
    c_sel(ra);
    c_autowalk(0);
    c_sprite(spr_ralsei_glasses_adjust);
    c_halt();
    c_wait(5);
    c_imageindex(1);
    c_var_instance(id, "noskip", true);
    c_msgside("top");
    c_speaker("ralsei");
    c_msgsetloc(0, "\\EA* This set..^1. there's..^1. something strange about it.../%", "obj_ch3_GSB05_slash_Step_0_gml_142_0");
    c_talk_wait();
    c_var_instance(id, "noskip", false);
    c_sel(ra);
    c_autowalk(1);
    c_facing("ralseiunhappy");
    c_facing("r");
    c_wait(8);
    c_emote("!", 30);
    c_sprite(spr_ralsei_shocked_right);
    c_shakeobj();
    c_msgside("top");
    c_speaker("ralsei");
    c_msgsetloc(0, "\\EL* Wait^1, look over there^1, you two!!/%", "obj_ch3_GSB05_slash_Step_0_gml_158_0");
    c_talk();
    c_wait(30);
    c_wait_talk();
    c_facing("r");
    c_pannable(1);
    c_pan(1102, 0, 60);
    c_sel(kr);
    c_walkdirect(1500, 204, 40);
    c_sel(su);
    c_facing("susieunhappy");
    c_walkdirect(1390, 188, 40);
    c_sel(ra);
    c_autowalk(1);
    c_walkdirect(1290, 194, 40);
    c_wait(40);
    c_sel(kr);
    c_facing("u");
    c_sel(su);
    c_facing("u");
    c_sel(ra);
    c_facing("u");
    c_wait(70);
    c_msgside("bottom");
    c_speaker("ralsei");
    c_msgsetloc(0, "\\EE* There it is^1! The Dark Fountain!/%", "obj_ch3_GSB05_slash_Step_0_gml_195_0");
    c_talk_wait();
    c_sel(su);
    c_facing("r");
    c_emote("!", 30);
    c_wait(30);
    c_sel(ra);
    c_facing("r");
    c_sel(kr);
    c_facing("r");
    c_speaker("susie");
    c_msgsetloc(0, "\\E6* ..^1. what the heck is that?/%", "obj_ch3_GSB05_slash_Step_0_gml_219_0");
    c_talk_wait();
    c_pan(1485, cameray(), 60);
    c_sel(kr);
    c_walkdirect_speed(1562, 204, 4);
    c_sel(su);
    c_walkdirect_speed(1707, 188, 8);
    c_sel(ra);
    c_walkdirect_speed_wait(1640, 194, 8);
    c_wait(30);
    c_speaker("susie");
    c_msgsetloc(0, "\\E6* It's like a giant..^1. gotchy ball thing?/", "obj_ch3_GSB05_slash_Step_0_gml_238_0");
    c_msgnextloc("\\E0* What's..^1. inside it...?/%", "obj_ch3_GSB05_slash_Step_0_gml_239_0");
    c_talk_wait();
    c_sel(su);
    c_walkdirect(1780, 155, 30);
    c_sel(ra);
    c_walkdirect(1735, 177, 30);
    c_sel(kr);
    c_walkdirect_wait(1682, 206, 30);
    c_wait(30);
    c_sel(su);
    c_sprite(spr_susie_surprised_step_back);
    c_sel(ra);
    c_sprite(spr_ralsei_surprised_right_walk);
    c_wait(15);
    c_sel(su);
    c_autowalk(0);
    c_imageindex(1);
    c_var_lerp_to("x", 1770, 4);
    c_sel(ra);
    c_autowalk(0);
    c_imagespeed(0.2);
    c_walk("l", 4, 8);
    c_delaycmd(9, "imagespeed", 0);
    c_sel(kr);
    c_autowalk(0);
    c_imagespeed(0.2);
    c_walk("l", 4, 8);
    c_delaycmd(9, "imagespeed", 0);
    c_speaker("susie");
    c_msgsetloc(0, "\\EE* T.../%", "obj_ch3_GSB05_slash_Step_0_gml_278_0");
    c_talk_wait();
    c_snd_play(155);
    c_var_lerp_to_instance(gacha_cover, "image_alpha", 0, 15);
    c_wait(2);
    c_wait(30);
    c_var_instance(gacha_cover, "visible", 0);
    c_speaker("susie");
    c_msgsetloc(0, "\\EZ* Toriel!?/%", "obj_ch3_GSB05_slash_Step_0_gml_292_0");
    c_talk_wait();
    c_sel(su);
    c_autowalk(1);
    c_walkdirect_wait(1810, 155, 10);
    c_sel(ra);
    c_sprite(spr_ralsei_walk_right_unhappy);
    c_wait(15);
    c_speaker("susie");
    c_msgsetloc(0, "\\EZ* Kris^1, what the hell is Toriel doing asleep in there!?/", "obj_ch3_GSB05_slash_Step_0_gml_306_0");
    c_msgnextloc("\\Eb* We were so busy with the game^1, I forgot she'd.../", "obj_ch3_GSB05_slash_Step_0_gml_307_0");
    c_msgnextloc("\\Ec* Obviously she'd be part of the Dark World^1, too!/", "obj_ch3_GSB05_slash_Step_0_gml_308_0");
    c_msgnextloc("\\Eb* Damn^1, Kris^1, we have to get to the Fountain right now^1, or.../%", "obj_ch3_GSB05_slash_Step_0_gml_309_0");
    c_talk();
    c_wait_box(1);
    c_sel(su);
    c_sprite(spr_susie_look_down_right);
    c_wait_box(2);
    c_sel(su);
    c_facing("u");
    c_wait_box(3);
    c_sel(su);
    c_facing("l");
    c_wait_talk();
    c_wait(30);
    c_sel(ra);
    c_sprite(spr_ralsei_surprised_left_walk);
    c_emote("!", 30);
    c_sel(su);
    c_sprite(spr_susie_surprised_left);
    c_emote("!", 30);
    c_sel(kr);
    c_facing("l");
    c_emote("!", 30);
    scr_funnytext_init(0, 0, 0, scr_84_get_sprite("spr_funnytext_toriel"), 0, 0);
    c_speaker("tenna");
    c_msgsetloc(0, "* Oh \\O0...!/%", "obj_ch3_GSB05_slash_Step_0_gml_342_0");
    c_talk_wait();
    c_wait(15);
    c_sel(su);
    c_autowalk(1);
    c_walkdirect_speed(1884, 180, 10);
    c_sel(ra);
    c_autowalk(1);
    c_walkdirect_speed(1891, 178, 10);
    c_sel(kr);
    c_autowalk(1);
    c_walkdirect_speed_wait(1894, 192, 10);
    c_wait(30);
    c_tenna_preset(0);
    c_tenna_sprite(270);
    c_var_instance(te_actor, "image_xscale", -2);
    c_var_instance(te_actor, "x", 1390);
    c_var_instance(te_actor, "y", 290);
    c_wait(1);
    c_snd_play(155);
    c_var_lerp_to_instance(te_actor, "x", 1660, 15, -1, "out");
    c_wait(45);
    c_speaker("tenna");
    c_msgsetloc(0, "* Phew^1! There you are^1, still sleeping like a little angel!/", "obj_ch3_GSB05_slash_Step_0_gml_373_0");
    c_msgnextloc("* Haha^1! Who the HECK knows what I'D do if you woke up!/", "obj_ch3_GSB05_slash_Step_0_gml_374_0");
    c_msgnextloc("* .../", "obj_ch3_GSB05_slash_Step_0_gml_375_0");
    c_msgnextloc("* I'm sorry we gotta do this to you^1, Tori.../", "obj_ch3_GSB05_slash_Step_0_gml_376_0");
    c_msgnextloc("* You were the last one to really..^1. give me a good look^1, back then./", "obj_ch3_GSB05_slash_Step_0_gml_377_0");
    c_msgnextloc("* But hey^1, that's show business^1! Nothing..^1. stays big forever./", "obj_ch3_GSB05_slash_Step_0_gml_378_0");
    c_msgnextloc("* Without..^1. a little HELP^1, that is./", "obj_ch3_GSB05_slash_Step_0_gml_379_0");
    c_msgnextloc("* That's why you're gonna be our little TRUMP CARD.../", "obj_ch3_GSB05_slash_Step_0_gml_380_0");
    c_msgnextloc("* Heheheh.../%", "obj_ch3_GSB05_slash_Step_0_gml_381_0");
    c_talk();
    c_wait_box(1);
    c_tenna_sprite(3327);
    c_wait_box(2);
    c_tenna_sprite(4187);
    c_wait_box(3);
    c_tenna_sprite(1991);
    c_wait_box(4);
    c_tenna_sprite(4539);
    c_wait_box(5);
    c_tenna_sprite(1558);
    c_wait_box(6);
    c_tenna_sprite(2049);
    c_wait_box(7);
    c_tenna_sprite(4187);
    c_wait_box(8);
    c_tenna_preset(8);
    c_wait_talk();
    c_sel(te);
    c_var_lerp_to("x", 1800, 10);
    c_wait(6);
    c_sprite(spr_tenna_hooray);
    c_addxy(0, 14);
    c_var_lerp_instance(te_actor, "image_index", 0, 3, 8);
    c_wait(7);
    c_sel(su);
    c_autowalk(0);
    c_sprite(spr_susied_dark_stealth_left_unhappy);
    c_setxy(1924, 176);
    c_sel(ra);
    c_autowalk(0);
    c_sprite(spr_ralsei_d_stealth_left);
    c_imageindex(3);
    c_setxy(1892, 208);
    c_sel(kr);
    c_sprite(spr_krisd_dark_stealth_left);
    c_setxy(1934, 204);
    c_snd_play(155);
    c_var_lerp_to_instance(gacha, "x", 1820, 8);
    c_var_lerp_to_instance(gacha, "y", 60, 8);
    c_wait(1);
    c_speaker("tenna");
    c_msgsetloc(0, "* Hahahahahaha-%%", "obj_ch3_GSB05_slash_Step_0_gml_448_0");
    c_talk_wait();
    c_tenna_preset(0);
    c_wait(60);
    c_speaker("tenna");
    c_msgsetloc(0, "* .../", "obj_ch3_GSB05_slash_Step_0_gml_457_0");
    c_facenext("susie", "F");
    c_msgnextloc("\\EF* .../", "obj_ch3_GSB05_slash_Step_0_gml_459_0");
    c_facenext("ralsei", "U");
    c_msgnextloc("\\EU* Umm.../%", "obj_ch3_GSB05_slash_Step_0_gml_461_0");
    c_talk_wait();
    c_mus("free_all");
    c_var_instance(id, "border_white_start", true);
    c_wait(1);
    c_var_instance(technical_difficulties, "type", 2);
    c_var_instance(technical_difficulties, "con", 0);
    c_mus2("initloop", "ch3_tvtime.ogg", 0);
    c_mus2("pitch", 1.75, 0);
    c_wait(180);
    c_actortokris();
    c_actortocaterpillar();
    c_terminatekillactors();
}

if (con == 28 && !i_ex(obj_cutscene_master))
{
    global.plot = 170;
    snd_free_all();
    global.interact = 0;
    room_goto(room_ch3_gameshowroom);
    con = -1;
}

if (noskip)
{
    with (obj_writer)
        skippable = 0;
}

if (border_white_start)
{
    border_white_start = false;
    
    with (obj_border_controller)
        hide_border(1, 16777215);
}
