/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if (pontos >= 3000 && !tiro_explosivo_liberado)
{
    tiro_explosivo_liberado = true;
    tipo_tiro_atual = 1; 
    audio_play_sound(snd_power_up,1, 0)
    //show_debug_message("Tiro Explosivo Liberado!")
}

//Tiro Fragmentado 2500 pontos
if (pontos >= 5000 && !tiro_fragmentado_liberado)
{
    tiro_fragmentado_liberado = true;
    tipo_tiro_atual = 3; 
    audio_play_sound(snd_power_up,1, 0)
    //show_debug_message("Tiro Fragmentado Liberado!")
}