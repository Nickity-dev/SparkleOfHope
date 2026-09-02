// Volumes (0 = mudo, 1 = máximo)
global.volume_musica = 1;
global.volume_sfx = 1;

// Estado do painel de opções
global.opcoes_aberta = false;

 if (audio_exists(mus_tema)) {
     global.music_id = audio_play_sound(mus_tema, 1, true, global.volume_musica); }
global.caixa_aberta = false;
global.caixa_texto = "";

global.caixa_aberta = false;
global.caixa_texto = "";
global.indo_para_porta = false;  

global.porta_alvo = noone;
global.room_alvo = noone;

