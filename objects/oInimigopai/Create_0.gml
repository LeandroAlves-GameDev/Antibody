/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

valor_pontos = 0

vida_inimigo = 1

//Criando uma lista de arrays para guardar estados
tipo_reacao = "quebravel"

velocidade_andando = 1.5;
ja_morreu = false;

mover = function()
{
    if (!ja_morreu)
    {
        y += velocidade_andando;
        
    }
}


reagir = function(_direcao)
{
    var _chance_frag = random(100)
    var _quantidade = random_range(1, 3)
    //fazendo ele gerar fragmentos
    
    //criando um for para espalhar os fragmentos
    for(var i = 0; i < _quantidade; i++)
    {
        //se meu chance frag for menor que 60% eu vou ter 60% de chance de causar uma reação em cadeia
        //que vai destruir meus inimigos
        if(_chance_frag < 35)
        {
            //Criando um sistema de gerar fragmentos
            var cria_frag = instance_create_layer(x, y, "Inimigos", oFragmento)
            cria_frag.speed = 2
            cria_frag.direction = random_range(70, 110)
        }
       
    }
    instance_destroy();
}


recebe_dano = function(_dano, _direcao)
{
    //ele vai ver se meu vida_colisor e igual ao meu vida colisor sendo subtraida pelo _dano 
    //que equivale a 1
    vida_inimigo = vida_inimigo - _dano
    
    //se for então ele vai verificar se minha vida colisor e menor que 0
    if(vida_inimigo <= 0)
    {
        //se for menor que zero então ele roda a função reagir
        oControlador.pontos += valor_pontos;
        reagir(_direcao)
    }
    
}

//criando o sistema de tirar vida do player
tira_vida_player = function()
{
    var _player_atingido = instance_place(x, y, oPlayer)
    
    if(_player_atingido != noone)
    {
        audio_play_sound(snd_hit_player, 1, 0)
        _player_atingido.alarme_hit = 10
        oScreenshake.treme = 4
        _player_atingido.vida_atual -= 1
        instance_destroy()
    }
}

//Criando o metodo hitflash no player
alarme_hit = 0

hitflash = function()
{
    if(alarme_hit > 0)
    {
        alarme_hit -= 1
    }
    
}
