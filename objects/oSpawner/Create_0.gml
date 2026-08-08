/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

tempo_spawn = 45
cronometro = tempo_spawn

//Criando um sistema de dificuldade para o player
dificulta_player = function()
{
    var pontos_atuais = oControlador.pontos; 
    if(pontos_atuais >= 10000)
    {
        tempo_spawn = 5
    }
    else if (pontos_atuais >= 5000)
    {
        tempo_spawn = 15
    }
    else if (pontos_atuais >= 2500)
    {
        tempo_spawn = 20
    }
    else if (pontos_atuais >= 1000)
    {
        tempo_spawn = 30
    } 
    else
    {
        tempo_spawn = 45
    }
}