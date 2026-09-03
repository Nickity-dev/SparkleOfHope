if (!global.opcoes_aberta) exit; // não faz nada se o painel estiver fechado

// Verifica se o mouse está dentro da área exata da barra
var _sobre_barra = (mouse_x >= barra_x0 && mouse_x <= barra_x0 + comprimento &&
                     mouse_y >= barra_y0 && mouse_y <= barra_y0 + altura_barra);

// Começa a arrastar só se clicar DENTRO da barra
if (_sobre_barra && mouse_check_button_pressed(mb_left)) {
    arrastando = true;
}

// Solta o arraste ao soltar o botão, em qualquer lugar da tela
if (mouse_check_button_released(mb_left)) {
    arrastando = false;
}

if (arrastando) {
    nivel = clamp((mouse_x - barra_x0) / comprimento, 0, 1);

    if (object_index == obj_slider_musica) {
        global.volume_musica = nivel;
        if (variable_global_exists("music_id") && audio_exists(mus_tema) && audio_is_playing(global.music_id)) {
            audio_sound_gain(global.music_id, global.volume_musica, 0);
        }
    } else if (object_index == obj_slider_som) {
        global.volume_sfx = nivel;
    }
}

 else if (object_index == obj_slider_som) {
    global.volume_sfx = nivel;

    // NOVO: ajusta o volume do som ambiente da cozinha em tempo real, se estiver tocando
    if (variable_global_exists("som_cozinha_id") && audio_is_playing(global.som_cozinha_id)) {
        audio_sound_gain(global.som_cozinha_id, global.volume_sfx, 0);
    }
}