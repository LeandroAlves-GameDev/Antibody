/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//Criando um metodo de mirar com a arma
mira_arma = function()
{
    var dir = point_direction(x, y, mouse_x, mouse_y)
    var range = angle_difference(dir, 0)
    var angle = clamp(range, -10, 80)
    image_angle = angle
}

atira_arma = function()
{
    //Criando o metodo de atirar no jogo
    //se eu pressionar o botão esquerdo do mouse
    if(mouse_check_button_pressed(mb_left))
    {
        var dist = 16 //Criando uma variavel temporaria para calcular a distancia do cabo
        //da arma até a ponta dela
        var ponta_x = x + lengthdir_x(dist, image_angle)
        var ponta_y = y + lengthdir_y(dist, image_angle)
        
        //então ele vai rodar o cria tiro
        //que consiste em criar uma instancia fazendo gerar um objeto bullet ou seja a bala
        var cria_tiro = instance_create_layer(ponta_x, ponta_y, "Gun", oBullet)
        cria_tiro.speed = 10
        //o cria tiro irá receber uma velocidade de 10
        cria_tiro.direction = image_angle
        //o cria tiro vai receber uma direção com base no image angle
        cria_tiro.image_angle = image_angle
        //por fim o image_angle vai ser igual a ele mesmo
    }
}