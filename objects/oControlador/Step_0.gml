/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//derrotar 10 inimigos libera o tiro explosivou seja case 1
if (inimigos_derrotados >= 10 && !tiro_explosivo_liberado)
{
    tiro_explosivo_liberado = true;
    tipo_tiro_atual = 1; // Muda automaticamente para o novo tiro
    show_debug_message("Tiro Explosivo Liberado!")
}

//derrotar 25 inimigos libera o tiro fragmentado ou seja case 2
if (inimigos_derrotados >= 25 && !tiro_fragmentado_liberado)
{
    tiro_fragmentado_liberado = true;
    tipo_tiro_atual = 3; //Mudaa utomaticamente
    show_debug_message("Tiro Fragmentado Liberado!");
}