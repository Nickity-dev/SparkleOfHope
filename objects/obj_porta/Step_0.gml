var _dist = point_distance(x, y, obj_jogador.x, obj_jogador.y); var _dentro_agora = (_dist <= 120);
if (primeira_vez) { dentro_anterior = _dentro_agora; primeira_vez = false; } 
else if (_dentro_agora && !dentro_anterior) { room_goto(rm_corredor); } dentro_anterior = _dentro_agora;