/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//Criando a velocidade do nosso projetil
speed = 10

//criando algumas variaveis para aplicar a gravidade
grav_direction = 270
//criando uma variavel chamada grav_direction que receberá um valor de 270
//ou seja ele indicará que o tiro deve cair
gravity = 0.1
//aplicando uma variavel de gravity para fazer o tiro realmente ter um peso

//Criando um sistema metodo de gravidade para fazer nosso tiro cair
grav_bullet = function()
{
    image_angle = direction
}

//Criando um metodo para destruir o tiro caso ele esteja saindo da room
destroi_tiro = function()
{
    //se meu X da room for maior que room largura ou seja o final do canto direito da room
    if(x > room_width)
    {
        //então ele rodará essa mensagem indicando que o tiro foi destruido
        //show_message("Tiro destruido")
        //e ira destruir a instancia do tiro
        instance_destroy()
    }
    if(y < -32)
    {
        //se meu y for menor que -32 ou seja para fora da room encima dela
        //show_message("Tiro destruido")
        //então meu tiro será destruido 
        instance_destroy()
    }
}

//Criando um metodo de colisão do tiro e fazendo gerar um efeito de reação
reacao_em_cadeia = function()
{
    var _colisor = instance_place(x, y, oColisorpai)
    //ele vai verificar se minha posição está colidindo com alguma outra instancia
    if(_colisor != noone)
    {
        _colisor.recebe_dano(1, image_angle)
        //se estiver então ele 
        //destroi meu tiro
        instance_destroy()
    }
}