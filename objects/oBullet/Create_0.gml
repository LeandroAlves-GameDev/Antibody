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

//Criando um sistema de tiros para nosso jogo
tipo = 0
//por padrão o tiro normal será zero

//Criando um metodo de colisão do tiro e fazendo gerar um efeito de reação
reacao_em_cadeia = function()
{
    var _inimigo = instance_place(x, y, oInimigopai)
    //ele vai verificar se minha posição está colidindo com alguma outra instancia
    if(_inimigo != noone)
    {
        switch (tipo) 
        {
            //Criando o case 0 que será nosso tiro normal
            case 0:
            {
                audio_play_sound(snd_hit, 1, 0)
                _inimigo.recebe_dano(1, image_angle)
                if (instance_exists(_inimigo)) 
                {
                    _inimigo.alarme_hit = 10
                }
                break;
            }
                //fazendo o case 1 que será o tiro explosivo	
            case 1:
            {
                audio_play_sound(snd_hit, 1, 0)
                _inimigo.recebe_dano(2, image_angle)
                var raio = 110
                with (oInimigopai)
                {
                    //se estiver dentro do raio da explosão (e não for o que já morreu/levou o tiro direto)
                    if (point_distance(x, y, other.x, other.y) <= raio)
                    {
                        
                        recebe_dano(1, other.image_angle)
                        alarme_hit = 10
                        instance_create_layer(x, y, "Detalhes", oExplosao);
                    }
                }
                break;
            }	 
            case 3: //Tiro Fragmentado
            {
                audio_play_sound(snd_hit, 1, 0)
                _inimigo.recebe_dano(3, image_angle)
                if (instance_exists(_inimigo)) 
                {
                    _inimigo.alarme_hit = 10
                }
                
                var chance_fragmentar = 40
                if (random(100) <= chance_fragmentar)
                {
                   var quantidade_estilhacos = 4
                   var angulo_inicial = image_angle - 45
                   var incremento = 90 / (quantidade_estilhacos - 1)
                    
                   for (var i = 0; i < quantidade_estilhacos; i++)
                   {
                       var angulo_atual = angulo_inicial + (incremento * i)
                       
                       var estilhaco = instance_create_layer(lengthdir_x, lengthdir_y, "Gun", oBullet)
                       estilhaco.speed = 5
                       estilhaco.direction = angulo_atual
                       estilhaco.image_angle = angulo_atual
                       
                       estilhaco.tipo = 3
                       estilhaco.image_xscale = 0.5
                       estilhaco.image_yscale = 0.5
                       
                   }
                }
                break;
            }                   
        }
        oScreenshake.treme = 15;
        instance_destroy();
    }
}