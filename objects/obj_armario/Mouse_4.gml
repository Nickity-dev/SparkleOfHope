show_debug_message("MOUSE_53 disparou - mouse_x=" + string(mouse_x) + " mouse_y=" + string(mouse_y));

if (global.caixa_aberta) {
    global.caixa_aberta = false;
} else {
    var _dist = point_distance(x, y, obj_jogador.x, obj_jogador.y);

    if (_dist <= 120) {
        global.caixa_aberta = true;
        global.caixa_texto = "Um armario velho... esta cheio de roupas.";
    } else {
        show_debug_message("Preciso chegar mais perto!");
    }
}