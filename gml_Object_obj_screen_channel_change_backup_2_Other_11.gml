event_user(0);

if (audio_is_playing(static_noise))
    snd_stop(static_noise);

static_noise = snd_play(snd_tv_static);
