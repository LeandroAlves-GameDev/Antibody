/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

cooldown_tiro = 0

//Criando um metodo de mirar com a arma
mira_arma = function()
{
    if (mouse_y >= y)
    {
        if (mouse_x < x) 
        {
            image_angle = 180;
        } 
        else 
        {
            image_angle = 0;
        }
    }
    else
    {
        var dir = point_direction(x, y, mouse_x, mouse_y)
        image_angle = clamp(dir, 0, 180)
    }
    if(image_angle > 90 && image_angle <= 180)
    {
        image_yscale = -1
    }
    else 
    {
    	image_yscale = 1
    }
}

atira_arma = function()
{
    var dist = 32 //Criando uma variavel temporaria para calcular a distancia do cabo
    //da arma até a ponta dela
    var ponta_x = x + lengthdir_x(dist, image_angle)
    var ponta_y = y + lengthdir_y(dist, image_angle)
    
    //Criando o metodo de atirar no jogo
    //se eu pressionar o botão esquerdo do mouse
    if(mouse_check_button_pressed(mb_left) && cooldown_tiro <= 0)
    {
        //então ele vai rodar o cria tiro
        //que consiste em criar uma instancia fazendo gerar um objeto bullet ou seja a bala
        var cria_tiro = instance_create_layer(ponta_x, ponta_y, "Gun", oBullet)
        cria_tiro.speed = 10
        //o cria tiro irá receber uma velocidade de 10
        cria_tiro.direction = image_angle
        //o cria tiro vai receber uma direção com base no image angle
        cria_tiro.image_angle = image_angle
        //por fim o image_angle vai ser igual a ele mesmo
        cria_tiro.tipo = oControlador.tipo_tiro_atual
        switch(oControlador.tipo_tiro_atual)
        {
            case 0: cooldown_tiro = 10; break; // Tiro normal (rápido)
            case 1: cooldown_tiro = 30; break; // Tiro tanque (mais lento)
            case 3: cooldown_tiro = 60; break; // Tiro super (muito lento)
            default: cooldown_tiro = 15; break; // Padrão
        }
        
    }
}

//Criando um metodo para fazer a trajetoria do tiro
desenha_trajetoria = function()
{
    var dist = 32 //Criando uma variavel temporaria para calcular a distancia do cabo
    //da arma até a ponta dela
    var ponta_x = x + lengthdir_x(dist, image_angle)
    var ponta_y = y + lengthdir_y(dist, image_angle)
    
    draw_set_color(c_white)
    for (var tempo = 1; tempo <= 30; tempo += 3) 
    {
    	//Criando uma variavel para calcular o trajeto
        var pos_x = ponta_x + lengthdir_x(10 * tempo, image_angle)
        
        var grav = 0.1
        var pos_y = ponta_y + lengthdir_y(10 * tempo, image_angle) + (0.5 * grav * tempo * tempo)
        
        //criando um caminho pontilhado para mostrar o trajeto do tiro
        draw_circle(pos_x, pos_y, 2, false);
    }
    //apos o fim do for teremos o indicador de mira
    draw_circle(pos_x, pos_y, 4, true)
}