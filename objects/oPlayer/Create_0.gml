/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


//Criando o sistema de vida do linfocito
vida_max = 3
//criando a vida atual dele
vida_atual = 3

//Criando a velocidade horizontal do player
velh = 2



//Criando um metodo onde ele vai segurar a arma
segura_arma = function()
{
    //Criando uma instancia onde ele vai segurar nossa arma
    minha_arma = instance_create_layer(x, y, "Gun", oGun)
}

segura_arma()

atualiza_posicao_arma = function()
{
    if (instance_exists(minha_arma))
    {
        minha_arma.x = x;
        minha_arma.y = y;
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


//Criando o metodo perde vida
perde_vida = function()
{
    //se meu vida atual for menor ou igual a 0
    if(vida_atual <= 0)
    {
        room_restart()
    }
    
}


//Criando o desenho da nossa barra de vida
desenha_barra_vida = function()
{
    //Criando coordenadas para posicionar nossa barra de vida
    var pos_x = 35
    var pos_y = 115
    
    //Criando o sistema de perde vida com base nos frames que tenho
    var _frame_atual = round((1 - (vida_atual / vida_max)) * 3)
    
    //Criando o desenho da moldura da barra de vida
    draw_sprite_ext(spr_barra_moldura_vida, _frame_atual, pos_x, pos_y, 4, 4, 0, c_white, 1)
    
}
