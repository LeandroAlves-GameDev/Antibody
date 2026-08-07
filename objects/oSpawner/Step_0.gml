/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

dificulta_player()

if (cronometro > 0)
{
    cronometro--;
}

if (cronometro <= 0)
{
    // Sorteia uma posição horizontal aleatória dentro da largura da tela
    var spawn_x = random_range(32, room_width - 32);
    
    // Fazendo ele nascer bem acima da tela
    var spawn_y = -32; 
    
    var tipo_inimigo_escolhido = choose(oInimigo1, oInimigo1, oInimigo_tanque, oInimigo_rapido);
    
    // Vai criar o inimigo na layer correta "Inimigos"
    instance_create_layer(spawn_x, spawn_y, "Inimigos", tipo_inimigo_escolhido);
    
    // Reseta o cronômetro com o novo tempo_spawn (que agora muda de acordo com a dificuldade!)
    cronometro = tempo_spawn;
}