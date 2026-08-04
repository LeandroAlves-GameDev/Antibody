/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


cronometro--;

if (cronometro <= 0)
{
    // Sorteia uma posição horizontal aleatória dentro da largura da tela
    var spawn_x = random_range(32, room_width - 32);
    
    // Nasce bem acima da tela
    var spawn_y = -32; 
    
    var tipo_inimigo_escolhido = choose(oInimigo1, oInimigo1, oInimigo_tanque, oInimigo_rapido);
    // Cria o inimigo na layer correta "Inimigos"
    instance_create_layer(spawn_x, spawn_y, "Inimigos", tipo_inimigo_escolhido);
    
    cronometro = tempo_spawn;
}