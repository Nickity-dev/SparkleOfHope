if (variable_global_exists("som_cozinha_id") && audio_is_playing(global.som_cozinha_id)) {
    audio_stop_sound(global.som_cozinha_id);
}