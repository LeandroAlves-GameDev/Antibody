/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


vida_colisor = 1

//Criando uma lista de arrays para guardar estados
tipo_reacao = "quebravel"


reagir = function(_direcao)
{
    var _quantidade = random_range(5, 15)
    //fazendo ele gerar fragmentos
    
    //criando um for para espalhar os fragmentos
    for(var i = 0; i < _quantidade; i++)
    {
       //Criando um sistema de gerar fragmentos
        var cria_frag = instance_create_layer(x, y, "Colisores", oFragmento)
        cria_frag.speed = 2
        cria_frag.direction = random(360)
    }
    instance_destroy();
}

recebe_dano = function(_dano, _direcao)
{
    //ele vai ver se meu vida_colisor e igual ao meu vida colisor sendo subtraida pelo _dano 
    //que equivale a 1
    vida_colisor = vida_colisor - _dano
    
    //se for então ele vai verificar se minha vida colisor e menor que 0
    if(vida_colisor <= 0)
    {
        //se for menor que zero então ele roda a função reagir
        reagir(_direcao)
    }
    
}