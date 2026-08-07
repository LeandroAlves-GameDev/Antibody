/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//rodando a musica do jogo
audio_play_sound(snd_menu, 1, 1)

//Criando o sistema de menu do jogo
index = 0
//iremos ter um index que será usado para se mover no menu

//criando um array list com opçoes
lista = ["Jogar", "Como Jogar", "Sair"]
lista_sprites = [spr_botao_jogar, spr_botao_jogar, spr_botao_sair]

//Criando um metodo para rodar o menu
roda_menu = function()
{
    //rodando um metodo switch usando a condição index
    switch (index) 
    {
        //no caso 0 ele vai direcionar para a room fase
    	case 0:
        {
            show_message("Fase")
            global.sala_destino = rm_fase
            room_goto(global.sala_destino)
            audio_stop_all()
        }
        break
        
        case 1:
        {
            show_message("Como jogar")
            //global.sala_destino = rm_fase
            audio_stop_all()
        }
        break    
        //caso 2 ele vai encerrar o jogo
        case 2:
        {
            show_message("Jogo encerrado")
            game_end()
        }
    }
}

//Criando o metodo para controlar o menu do jogo
controle_menu = function()
{
    if(keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up))
    {
        //se eu apertar a tecla W ou apertar a seta para cima
        //ele vai subtrair meu index
        index--
        //rodando um if para fazer a inversão
        if(index < 0)
        {
            //se meu index selecionado for menor que zero então ele se move para cima pois cima será negativo
            index = 2
        }
    }
    if(keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down))
    {
        //se eu apertar para S ou para down
        //vou ganhar index
        index++
        //rodando um if para inverter a logica
        if(index >= 3)
        {
            //ele vai verificar se meu index e maior que 2
            index = 0
            //voltando pro index zero que se refere ao parte de cima, criando um movimento de ida e volta
        }
    }
    if(keyboard_check_pressed(vk_enter))
    {
        //se eu apertei o botão enter
        //então
        roda_menu()
    }
}
  
//Criando o metodo para desenhar o menu
desenha_menu = function()
{
    //definindo a posição do botão 
    var posicao_x = 32
    var meio_y = room_height / 3
    
    for(var i = 0; i < 3; i++)
    {
        var cor_atual = c_white;
        var sprite_atual = lista_sprites[i]
        var frame_atual = 0;
        
        var posicao_y_atual = meio_y + (i * 125)
        draw_sprite_ext(sprite_atual, frame_atual, posicao_x, posicao_y_atual, .8, .8, 0, draw_get_color(), 1);
        
        if(i == index)
        {
            draw_sprite_ext(spr_botao_contorno, 0, posicao_x, posicao_y_atual, .8, .8, 0, c_white, 1)
        }
        
        
    }
    draw_set_color(c_white);
}