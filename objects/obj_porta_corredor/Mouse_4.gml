var _dist = point_distance(x, y, obj_jogador.x, obj_jogador.y);

if (_dist <= 120) {
    room_goto(rm_cozinha);
} else {
    var _dir = sign(x - obj_jogador.x);
    obj_jogador.target_x = x - (_dir * 60);
    obj_jogador.target_y = obj_jogador.y; // mantém a altura atual, não sobe pra zona de colisão
    obj_jogador.has_target = true;
    global.indo_para_porta = true;
    global.porta_alvo = id;
    global.room_alvo = rm_cozinha;
}