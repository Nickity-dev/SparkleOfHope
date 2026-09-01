if (global.caixa_aberta) {
    global.caixa_aberta = false;
} else {
    var _dist = point_distance(x, y, obj_jogador.x, obj_jogador.y);

    if (_dist <= 120) {
        global.caixa_aberta = true;
        global.caixa_texto = "A geladeira... tem as bebidads do papai.";
    } else {
        show_debug_message("Preciso chegar mais perto!");
    }
}