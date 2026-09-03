spd = 1.5;
image_speed = 0;
image_index = 0;
floor_top = 161;

target_x = x;
target_y = y;
has_target = false;

stuck_timer = 0;
last_x = x;
last_y = y;

// controle do som de passo
passo_timer = 0;
passo_intervalo = 20; // a cada quantos frames toca o som (ajuste ao gosto)
passo_som_id = -1; // guarda a instância do som tocando