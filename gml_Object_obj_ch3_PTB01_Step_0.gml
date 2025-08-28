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
    c_sel(kr);
    c_setxy(1170, 168);
    c_facing("r");
    c_sel(ra);
    c_facing("ralseiunhappy");
    c_facing("r");
    c_setxy(1080, 212);
    c_sel(su);
    c_setxy(1120, 182);
    c_sprite(spr_susie_walk_right_dw_unhappy);
    c_halt();
    te = actor_count + 1;
    te_actor = instance_create(1520, 290, obj_actor_tenna);
    scr_actor_setup(te, te_actor, "tenna");
    te_actor.sprite_index = spr_tenna_grasp;
    te_actor.preset = 0;
    te_actor.darkenalpha = 1;
    c_sel(te);
    c_sprite(spr_tenna_hurt);
    c_var_instance(id, "tenna_shake", true);
    c_speaker("tenna");
    c_msgsetloc(0, "* N..^1. no...^1! No no.../", "obj_ch3_PTB01_slash_Step_0_gml_49_0");
    c_msgnextloc("* Noooooooo..^1./%", "obj_ch3_PTB01_slash_Step_0_gml_50_0");
    c_talk();
    c_wait_box(1);
    c_var_instance(id, "slow_text", true);
    c_var_instance(819, "kind", -1);
    c_var_instance(819, "tennaending", false);
    c_var_lerp_instance(te_actor, "image_xscale", 2, 0.5, 90);
    c_var_lerp_instance(te_actor, "image_yscale", 2, 0.5, 90);
    c_wait_talk();
    c_var_instance(id, "slow_text", false);
    c_wait_if(te_actor, "image_xscale", "=", 0.5);
    c_var_instance(id, "tenna_shake", false);
    c_sprite(spr_tenna_pose_headlowered);
    c_wait(60);
    c_var_instance(id, "tenna_spotlight", true);
    c_sound_play(163);
    c_wait(60);
    c_speaker("tenna");
    c_msgsetloc(0, "* I..^1. I just wanted to be watched.../", "obj_ch3_PTB01_slash_Step_0_gml_80_0");
    c_msgnextloc("* I just wanted you to look at me.../", "obj_ch3_PTB01_slash_Step_0_gml_81_0");
    c_msgnextloc("* One last time../%", "obj_ch3_PTB01_slash_Step_0_gml_82_0");
    c_talk_wait();
    c_speaker("tenna");
    c_msgsetloc(0, "* .../%", "obj_ch3_PTB01_slash_Step_0_gml_88_0");
    c_talk_wait();
    c_speaker("tenna");
    c_msgsetloc(0, "* Since..^1. since a little while ago.../", "obj_ch3_PTB01_slash_Step_0_gml_94_0");
    c_msgnextloc("* All that I've been broadcasting^1, is the same reruns^1, over and over.../", "obj_ch3_PTB01_slash_Step_0_gml_95_0");
    c_msgnextloc("* I..^1. I don't have anything anyone wants to watch anymore.../", "obj_ch3_PTB01_slash_Step_0_gml_96_0");
    c_msgnextloc("* I'm irrelevant..^1. I'm junk.../", "obj_ch3_PTB01_slash_Step_0_gml_97_0");
    c_msgnextloc("* I don't wanna be thrown away.../%", "obj_ch3_PTB01_slash_Step_0_gml_98_0");
    c_talk_wait();
    c_var_instance(id, "ralsei_spotlight", true);
    c_sound_play(163);
    c_wait(30);
    c_sel(ra);
    c_walkdirect(camerax() + 190, 212, 30);
    c_wait_if(ra_actor, "x", ">=", camerax() + 150);
    c_autodepth(1);
    c_wait(15);
    c_speaker("ralsei");
    c_msgsetloc(0, "\\E8* Mr. Tenna..^1. I..^1. understand how you feel./", "obj_ch3_PTB01_slash_Step_0_gml_114_0");
    c_msgnextloc("\\EQ* To want to be..^1. important. To be..^1. useful./", "obj_ch3_PTB01_slash_Step_0_gml_118_0");
    c_msgnextloc("\\E5* Perhaps..^1. you might not be watched much anymore.../", "obj_ch3_PTB01_slash_Step_0_gml_122_0");
    c_msgnextloc("\\EQ* But..^1. that doesn't make you a failure^1, Tenna!/", "obj_ch3_PTB01_slash_Step_0_gml_123_0");
    c_msgnextloc("\\E0* You've brought smiles^1, light into Lightner's lives.../", "obj_ch3_PTB01_slash_Step_0_gml_124_0");
    c_msgnextloc("\\E2* ..^1. to Kris's family and friends^1, for so long./", "obj_ch3_PTB01_slash_Step_0_gml_128_0");
    c_msgnextloc("\\E0* So^1, there's nothing to be ashamed of./", "obj_ch3_PTB01_slash_Step_0_gml_132_0");
    c_msgnextloc("\\EQ* If..^1. that ever comes to an end./", "obj_ch3_PTB01_slash_Step_0_gml_136_0");
    c_msgnextloc("\\Ee* Darkners..^1. all become obsolete eventually./", "obj_ch3_PTB01_slash_Step_0_gml_137_0");
    c_msgnextloc("\\Ea* But we aren't \"real\"^1, Tenna./", "obj_ch3_PTB01_slash_Step_0_gml_141_0");
    c_msgnextloc("\\Ee* We shouldn't make Lightners worry about what happens to us./", "obj_ch3_PTB01_slash_Step_0_gml_142_0");
    c_msgnextloc("\\Eb* It'd just..^1. make them unhappy^1, wouldn't it?/%", "obj_ch3_PTB01_slash_Step_0_gml_143_0");
    c_talk();
    c_wait_box(1);
    c_sel(ra);
    c_facing("d");
    c_wait_box(2);
    c_sel(ra);
    c_facing("r");
    c_wait_box(6);
    c_sel(ra);
    c_facing("d");
    c_wait_box(8);
    c_sel(ra);
    c_sprite(spr_ralsei_walk_right_sad);
    c_wait_box(9);
    c_sel(ra);
    c_facing("r");
    c_wait_talk();
    c_var_instance(id, "spotlight_shrink", true);
    c_var_lerp_instance(te_actor, "image_xscale", 0.5, 0.35, 30);
    c_var_lerp_instance(te_actor, "image_yscale", 0.5, 0.35, 30);
    c_wait(60);
    c_speaker("tenna");
    c_msgsetloc(0, "* ..^1./", "obj_ch3_PTB01_slash_Step_0_gml_181_0");
    c_msgnextloc("* ..^1. m..^1. maybe..^1. you're right.../", "obj_ch3_PTB01_slash_Step_0_gml_182_0");
    c_msgnextloc("* B..^1. but..^1. I.../%", "obj_ch3_PTB01_slash_Step_0_gml_183_0");
    c_talk_wait();
    c_sel(su);
    c_facing("susieunhappy");
    c_walkdirect_wait(1120, 206, 5);
    c_delaycmd(8, "autodepth", 1);
    c_delaycmd(8, "soundplay", snd_wing);
    c_sel(ra);
    c_autowalk(0);
    c_autodepth(0);
    c_delaycmd(8, "depth", spotlight_fx.depth + 10);
    c_delaywalkdirect(8, camerax() + 190, 190, 6);
    c_sel(su);
    c_walkdirect_wait(camerax() + 190, 206, 10);
    c_facing("r");
    c_sel(ra);
    c_facing("d");
    c_speaker("susie");
    c_msgsetloc(0, "\\EV* Hey./", "obj_ch3_PTB01_slash_Step_0_gml_204_0");
    c_msgnextloc("\\EW* You wanna know what I think?/", "obj_ch3_PTB01_slash_Step_0_gml_205_0");
    c_facenext("ralsei", "8");
    c_msgnextloc("\\E8* Susie?/", "obj_ch3_PTB01_slash_Step_0_gml_207_0");
    c_facenext("susie", "V");
    c_msgnextloc("\\EV* I think.../%", "obj_ch3_PTB01_slash_Step_0_gml_209_0");
    c_talk_wait();
    c_var_instance(id, "spotlight_move", true);
    c_sel(su);
    c_walkdirect(camerax() + 300, 206, 30);
    c_wait(15);
    c_sel(ra);
    c_autowalk(1);
    c_facing("r");
    c_wait(15);
    c_wait(30);
    c_sel(su);
    c_facing("u");
    c_var_instance(id, "spotlight_move", false);
    c_speaker("susie");
    c_msgsetloc(0, "\\E2* You don't have to take being thrown away./%", "obj_ch3_PTB01_slash_Step_0_gml_231_0");
    c_talk_wait();
    c_var_instance(id, "susie_solo", true);
    c_sel(te);
    c_autodepth(0);
    c_depth(550000);
    c_wait(60);
    c_speaker("susie");
    c_fefc(0, 0);
    c_msgsetloc(0, "\\EV* Lemme tell you./", "obj_ch3_PTB01_slash_Step_0_gml_249_0");
    c_msgnextloc("\\EV* I've never really been able to..^1. make friends./", "obj_ch3_PTB01_slash_Step_0_gml_250_0");
    c_msgnextloc("\\EV* I was always..^1. the scary girl. The bad kid./", "obj_ch3_PTB01_slash_Step_0_gml_251_0");
    c_msgnextloc("\\EV* The only times anyone ever got close to me^1,/", "obj_ch3_PTB01_slash_Step_0_gml_252_0");
    c_msgnextloc("\\EV* ..^1. were as a joke./", "obj_ch3_PTB01_slash_Step_0_gml_253_0");
    c_msgnextloc("\\EV* And even if I did start to make a real friend.../%", "obj_ch3_PTB01_slash_Step_0_gml_254_0");
    c_talk();
    c_wait_box(1);
    c_mus("free_all");
    c_mus2("initloop", "noelle_normal.ogg", 0);
    c_wait_talk();
    c_sel(su);
    c_autodepth(0);
    c_depth(blackall.depth - 10);
    c_var_lerp_instance(blackall, "image_alpha", 0, 1, 60);
    c_wait(90);
    c_speaker("susie");
    c_fefc(0, 0);
    c_msgsetloc(0, "\\EV* ..^1. I'd always end up.../%", "obj_ch3_PTB01_slash_Step_0_gml_273_0");
    c_talk_wait();
    c_var_lerp_instance(su_actor, "image_alpha", 1, 0, 60);
    c_wait(90);
    c_sel(su);
    c_visible(0);
    c_var_instance(su_actor, "image_alpha", 1);
    c_speaker("susie");
    c_fefc(0, 0);
    c_msgsetloc(0, "\\EV* Moving away./%", "obj_ch3_PTB01_slash_Step_0_gml_285_0");
    c_talk_wait();
    c_wait(60);
    c_var_instance(classroom_sepia, "x", camerax());
    c_var_instance(classroom_sepia, "y", 0);
    c_var_instance(classroom_sepia, "visible", 1);
    c_var_lerp_instance(blackall, "image_alpha", 1, 0, 60);
    c_wait(90);
    c_msgside("top");
    c_speaker("susie");
    c_fefc(0, 0);
    c_msgsetloc(0, "\\EV* When I moved here^1, I thought it would be the same thing./", "obj_ch3_PTB01_slash_Step_0_gml_307_0");
    c_msgnextloc("\\EV* I felt like you./", "obj_ch3_PTB01_slash_Step_0_gml_308_0");
    c_msgnextloc("\\EV* I felt like a broken toy no one wanted./%", "obj_ch3_PTB01_slash_Step_0_gml_309_0");
    c_talk_wait();
    c_wait(30);
    c_var_lerp_instance(blackall, "image_alpha", 0, 1, 60);
    c_wait(90);
    c_var_instance(classroom_sepia, "visible", 0);
    c_var_instance(classroom_susie, "visible", 0);
    c_var_instance(graveyard_sepia, "x", camerax());
    c_var_instance(graveyard_sepia, "y", 0);
    c_var_instance(graveyard_sepia, "visible", 1);
    c_speaker("susie");
    c_fefc(0, 0);
    c_msgsetloc(0, "\\EV* .../%", "obj_ch3_PTB01_slash_Step_0_gml_328_0");
    c_talk_wait();
    c_wait(30);
    c_var_lerp_instance(blackall, "image_alpha", 1, 0, 60);
    c_wait(90);
    c_msgside("bottom");
    c_speaker("susie");
    c_fefc(0, 0);
    c_msgsetloc(0, "\\EV* Kris's mom saw me. Toriel./", "obj_ch3_PTB01_slash_Step_0_gml_338_0");
    c_msgnextloc("\\EV* Saw me sitting on the bench in the graveyard^1, crying./", "obj_ch3_PTB01_slash_Step_0_gml_339_0");
    c_msgnextloc("\\EV* She asked me what was wrong^1, and.../%", "obj_ch3_PTB01_slash_Step_0_gml_340_0");
    c_talk_wait();
    c_var_lerp_instance(blackall, "image_alpha", 0, 1, 60);
    c_wait(90);
    c_var_instance(graveyard_sepia, "visible", 0);
    c_speaker("susie");
    c_fefc(0, 0);
    c_msgsetloc(0, "\\EV* Told me everything was going to be okay./%", "obj_ch3_PTB01_slash_Step_0_gml_351_0");
    c_talk_wait();
    c_wait(30);
    c_var_instance(diner_sepia, "x", camerax());
    c_var_instance(diner_sepia, "y", 0);
    c_var_instance(diner_sepia, "visible", 1);
    c_var_lerp_instance(blackall, "image_alpha", 1, 0, 60);
    c_wait(90);
    c_speaker("susie");
    c_fefc(0, 0);
    c_msgsetloc(0, "\\EV* Took me to the diner. Bought me a hot chocolate./", "obj_ch3_PTB01_slash_Step_0_gml_365_0");
    c_msgnextloc("\\EV* Talked to me. Told me I'd make friends./", "obj_ch3_PTB01_slash_Step_0_gml_366_0");
    c_msgnextloc("\\EV* That..^1. gave me hope. Even just a little./", "obj_ch3_PTB01_slash_Step_0_gml_367_0");
    c_msgnextloc("\\EV* .../%", "obj_ch3_PTB01_slash_Step_0_gml_368_0");
    c_talk_wait();
    c_wait(30);
    c_var_lerp_instance(blackall, "image_alpha", 0, 1, 60);
    c_var_instance(blackall, "depth", 100);
    c_wait(60);
    c_var_instance(diner_sepia, "visible", 0);
    c_var_instance(spotlight_fx_susie, "spotlight_active", false);
    c_var_instance(spotlight_fx, "tenna_active", false);
    c_sel(ra);
    c_setxy(1226, 210);
    c_sel(kr);
    c_setxy(1155, 222);
    c_wait(30);
    c_sel(su);
    c_autodepth(1);
    c_visible(1);
    c_wait(15);
    c_var_instance(blackall, "depth", 9000);
    c_sel(su);
    c_autodepth(0);
    c_depth(8000);
    c_var_lerp_instance(blackall, "image_alpha", 1, 0.5, 30);
    c_wait(60);
    c_speaker("susie");
    c_msgsetloc(0, "\\EV* And recently. That hope's been growing./", "obj_ch3_PTB01_slash_Step_0_gml_408_0");
    c_msgnextloc("\\EL* Because..^1. now I have friends./", "obj_ch3_PTB01_slash_Step_0_gml_409_0");
    c_msgnextloc("\\E2* Real friends./", "obj_ch3_PTB01_slash_Step_0_gml_410_0");
    c_msgnextloc("\\E9* Friends I wanna keep./", "obj_ch3_PTB01_slash_Step_0_gml_411_0");
    c_msgnextloc("\\E2* Kris. Ralsei. Lancer..^1. Toriel^1, too./", "obj_ch3_PTB01_slash_Step_0_gml_412_0");
    c_msgnextloc("\\ER* Even though I thought I was broken^1.../", "obj_ch3_PTB01_slash_Step_0_gml_413_0");
    c_msgnextloc("\\ES* I just needed to find the right people^1, y'know?/", "obj_ch3_PTB01_slash_Step_0_gml_414_0");
    c_msgnextloc("\\ED* So.../", "obj_ch3_PTB01_slash_Step_0_gml_415_0");
    c_msgnextloc("\\ES* Don't worry^1, dude./", "obj_ch3_PTB01_slash_Step_0_gml_416_0");
    c_msgnextloc("\\ET* Someone out there wants you. Promise./", "obj_ch3_PTB01_slash_Step_0_gml_417_0");
    c_msgnextloc("\\E2* Kris^1, you'll help me ask around town^1, right?/", "obj_ch3_PTB01_slash_Step_0_gml_418_0");
    c_msgnextloc("\\E9* Someone's gotta want a TV./%", "obj_ch3_PTB01_slash_Step_0_gml_419_0");
    c_talk();
    c_wait_box(1);
    c_var_lerp_instance(blackall, "image_alpha", 0.5, 0, 30);
    c_sel(su);
    c_facing("l");
    c_wait_box(2);
    c_facing("susiedarkeyes");
    c_facing("l");
    c_sel(ra);
    c_facing("ralseinohat");
    c_facing("r");
    c_wait_box(4);
    c_sel(su);
    c_facing("d");
    c_wait_box(6);
    c_facing("r");
    c_wait_box(10);
    c_facing("l");
    c_wait_talk();
    c_wait(30);
    c_sel(su);
    c_facing("r");
    c_sel(te);
    c_sprite(spr_tenna_pose_headraised);
    c_mus2("volume", 0, 30);
    c_speaker("tenna");
    c_msgsetloc(0, "* You..^1. you'll help me!?/", "obj_ch3_PTB01_slash_Step_0_gml_462_0");
    c_msgnextloc("* SUSIE!!^1! You.../%", "obj_ch3_PTB01_slash_Step_0_gml_463_0");
    c_talk_wait();
    c_sel(te);
    c_mus("free_all");
    c_mus2("initloop", "baci_perugina.ogg", 0);
    c_wait(10);
    c_tenna_preset(19);
    c_speaker("tenna");
    c_msgsetloc(0, "* You're INCREDIBLE^1! You're AMAZING!^1! No..^1. you're MARVELOUS!!/", "obj_ch3_PTB01_slash_Step_0_gml_479_0");
    c_msgnextloc("* I feel electric!^1! I feel like a million bucks!!/%", "obj_ch3_PTB01_slash_Step_0_gml_480_0");
    c_talk_wait();
    c_wait_if(te_actor, "image_xscale", "=", 2);
    c_var_instance(funometer, "y", cameray() + 4);
    c_var_lerp_to_instance(funometer, "x", camerax() + 14, 12, -3, "out");
    c_var_instance(funometer, "fun", 1);
    c_wait(15);
    c_var_instance(funometer, "hope_flower_active", true);
    c_speaker("tenna");
    c_msgsetloc(0, "* This..^1. this must be what HOPE feels like!!/", "obj_ch3_PTB01_slash_Step_0_gml_493_0");
    scr_funnytext_init(0, 0, 0, scr_84_get_sprite("spr_funnytext_hall_of_fame"), 0, 0);
    c_msgnextloc("* We're inventing a \\O0 just for you!!!/%", "obj_ch3_PTB01_slash_Step_0_gml_497_0");
    c_talk();
    c_wait_box(1);
    c_tenna_preset(5);
    c_wait_talk();
    c_wait(15);
    c_sel(su);
    c_walk_wait("r", 4, 4);
    c_sprite(spr_susie_act_pose);
    c_animate(0, 9, 0.3);
    c_wait(60);
    c_mus("pause");
    c_sel(te);
    c_tenna_preset(0);
    c_sprite(spr_tenna_point_left);
    c_speaker("susie");
    c_msgsetloc(0, "\\ED* But..^1. you gotta give back Toriel./", "obj_ch3_PTB01_slash_Step_0_gml_525_0");
    c_msgnextloc("\\ET* She's got people that need her^1, too./%", "obj_ch3_PTB01_slash_Step_0_gml_526_0");
    c_talk_wait();
    c_sel(te);
    c_tenna_sprite(2049);
    c_speaker("tenna");
    c_msgsetloc(0, "* I.../%", "obj_ch3_PTB01_slash_Step_0_gml_534_0");
    c_talk_wait();
    c_tenna_sprite(2285);
    c_speaker("tenna");
    c_msgsetloc(0, "* I understand!/%", "obj_ch3_PTB01_slash_Step_0_gml_541_0");
    c_talk_wait();
    c_tenna_sprite(2049);
    c_speaker("tenna");
    c_msgsetloc(0, "* I know it's not what the KNIGHT wants^1, but.../%", "obj_ch3_PTB01_slash_Step_0_gml_548_0");
    c_talk_wait();
    c_tenna_preset(5);
    c_mus("resume");
    c_speaker("tenna");
    c_msgsetloc(0, "* Kris!^1! Susie!^1! Good contestants deserve a good prize!!/%", "obj_ch3_PTB01_slash_Step_0_gml_557_0");
    c_talk_wait();
    c_sel(su);
    c_facing("r");
    c_sel(te);
    c_tenna_preset(0);
    c_sprite(spr_tenna_point_left);
    c_flip("x");
    c_addxy(30, 0);
    c_shakeobj();
    c_soundplay(snd_whip_crack_only);
    c_wait(15);
    c_speaker("tenna");
    c_msgsetloc(0, "* This way!!/%", "obj_ch3_PTB01_slash_Step_0_gml_574_0");
    c_talk_wait();
    c_tenna_preset(10);
    c_tenna_sprite(3120);
    c_mus2("volume", 0, 60);
    c_imagespeed(2);
    c_var_lerp_to_instance(funometer, "y", cameray() - 120, 20, 2, "out");
    c_var_lerp_to_instance(funometer, "ystart", cameray() - 120, 20, 2, "out");
    c_var_lerp_to_instance(funometer, "x", camerax() - 160, 20, 2, "out");
    c_var_lerp_to_instance(funometer, "xstart", camerax() - 160, 20, 2, "out");
    c_var_lerp_instance(te_actor, "x", te_actor.x, camerax() + view_wport[0] + 200, 60, 2, "out");
    c_wait(60);
    c_var_instance(funometer, "visible", 0);
    c_sel(ra);
    c_facing("d");
    c_sel(su);
    c_facing("l");
    c_speaker("ralsei");
    c_msgsetloc(0, "\\EI* Susie.../%", "obj_ch3_PTB01_slash_Step_0_gml_602_0");
    c_talk_wait();
    c_wait(15);
    c_sel(ra);
    c_facing("r");
    c_sel(su);
    c_walkdirect_wait(1264, 206, 15);
    c_speaker("susie");
    c_msgsetloc(0, "\\E2* Hear that^1, Ralsei?/", "obj_ch3_PTB01_slash_Step_0_gml_616_0");
    c_msgnextloc("\\EQ* No one's gonna get thrown away./", "obj_ch3_PTB01_slash_Step_0_gml_617_0");
    c_msgnextloc("\\EL* Not you. Not me. Not Kris./%", "obj_ch3_PTB01_slash_Step_0_gml_618_0");
    c_talk();
    c_wait_box(1);
    c_sel(ra);
    c_sprite(spr_ralsei_head_down_sad_right);
    c_wait_talk();
    c_sel(su);
    c_autodepth(0);
    c_depth(700000);
    c_sprite(spr_susie_ralsei_hand_shoulder);
    c_speaker("susie");
    c_msgsetloc(0, "\\E9* Got it?/", "obj_ch3_PTB01_slash_Step_0_gml_635_0");
    c_facenext("ralsei", "I");
    c_msgnextloc("\\EI* .../%", "obj_ch3_PTB01_slash_Step_0_gml_637_0");
    c_talk_wait();
    c_sel(ra);
    c_facing("r");
    c_speaker("ralsei");
    c_msgsetloc(0, "\\E2* ..^1. got it^1, Susie./%", "obj_ch3_PTB01_slash_Step_0_gml_645_0");
    c_talk_wait();
    c_sel(su);
    c_facing("l");
    c_speaker("susie");
    c_msgsetloc(0, "\\E7* Well^1, let's go!!/%", "obj_ch3_PTB01_slash_Step_0_gml_653_0");
    c_talk_wait();
    c_sel(su);
    c_walk("l", 4, 16);
    c_sel(ra);
    c_walk("r", 4, 12);
    c_delayfacing(13, "l");
    c_pannable(1);
    c_panobj(kr_actor, 30);
    c_wait(31);
    c_pannable(0);
    c_sel(kr);
    c_facing("d");
    c_mus("free_all");
    c_actortokris();
    c_actortocaterpillar();
    c_terminatekillactors();
}

if (con == 3 && !i_ex(obj_cutscene_master))
{
    global.interact = 0;
    global.facing = 0;
    global.plot = 320;
    con = 99;
    
    with (spotlight_fx)
        instance_destroy();
    
    with (spotlight_fx_susie)
        instance_destroy();
    
    if (scr_flag_get(7) == 1)
        scr_flag_set(7, 0);
    
    scr_tempsave();
    instance_destroy();
    exit;
}

if (tenna_shake)
{
    tenna_shake_timer--;
    
    if (tenna_shake_timer <= 0)
    {
        with (te_actor)
            scr_shakeobj();
        
        tenna_shake_timer = 15;
    }
}

if (tenna_spotlight)
{
    tenna_spotlight = false;
    spotlight_fx.tenna_active = true;
    
    with (kr_actor)
        auto_depth = 0;
    
    kr_actor.depth = spotlight_fx.depth + 10;
    
    with (su_actor)
        auto_depth = 0;
    
    su_actor.depth = spotlight_fx.depth + 10;
    
    with (ra_actor)
        auto_depth = 0;
    
    ra_actor.depth = su_actor.depth - 5;
}

if (ralsei_spotlight)
{
    ralsei_spotlight = false;
    spotlight_fx.ralsei_active = true;
}

if (susie_solo)
{
    susie_solo = false;
    spotlight_fx_susie.small_base_x = su_actor.x + 25;
    spotlight_fx_susie.spotlight_active = true;
    
    with (spotlight_fx_susie)
    {
        scr_lerpvar("bg_alpha", 0, 1, 30);
        scr_lerpvar("bg_alpha_2", 0, 0.5, 30);
    }
}

if (spotlight_move)
    spotlight_fx.small_base_x = su_actor.x + 25;

if (slow_text)
{
    with (obj_writer)
        rate = 10;
}

if (spotlight_shrink)
{
    spotlight_shrink = false;
    
    with (spotlight_fx)
        scr_lerpvar("tenna_base_x_offset", tenna_base_x_offset, 40, 30);
}

if (spotlight_nudge)
{
    spotlight_nudge = false;
    
    with (spotlight_fx)
        scr_lerpvar("tenna_base_x", tenna_base_x, tenna_base_x + 15, 10);
}
