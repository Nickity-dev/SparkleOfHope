if (audio_exists(snd_ambiente_cozinha)) {
    global.som_cozinha_id = audio_play_sound(snd_ambiente_cozinha, 1, true, global.volume_sfx);
}