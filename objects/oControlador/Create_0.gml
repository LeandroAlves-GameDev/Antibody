/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
pontos = 0

tiro_normal_liberado = true
tiro_explosivo_liberado = false
tiro_fragmentado_liberado = false
tipo_tiro_atual = 0

//Criando um metodo para desenhar os pontos
desenha_pontos = function()
{
    draw_set_font(fnt_pontos); // Usa a fonte padrão do GameMaker
    draw_set_halign(fa_left);
    draw_set_color(c_white);
    draw_text(20, 20, "PONTOS: " + string(pontos));
}


//Criando o metodo para desenhar o inventario
desenha_inventario = function()
{ 
    var gui_largura = display_get_gui_width()
    var gui_altura  = display_get_gui_height()
    
    var largura_escala = 101 * 2
    
    var inv_x = (gui_largura / 1.5) - (largura_escala / 2) 
    var inv_y = gui_altura - 55
    
    draw_sprite_ext(spr_inventario, 0, inv_x, inv_y, 2.5, 2.5, 0, c_white, 1)
    
    //Criando o texto para indicar os pontos que preciso para conseguir o proximo tiro
    
    draw_text(inv_x - 104, inv_y + 10, "Normal")
    draw_text(inv_x - 24, inv_y + 10, "3000")
    draw_text(inv_x + 47, inv_y + 10, "7000")
}

//criando uma variavel de controle para pausar o jogo
pausado = false;

//criando o metodo para alternar nas pausas 
alternar_pausa = function()
{
    if (keyboard_check_pressed(vk_escape))
    {
        pausado = !pausado;
        
        if (pausado) 
        {
            instance_deactivate_all(true) //pausando o jogo
            audio_stop_all()
        } 
        else 
        {
            instance_activate_all(); //fazendo ele voltar
            audio_play_sound(snd_gameplay, 1, 1)
        }
    }
    if(keyboard_check_pressed(vk_enter))
    {
        global.sala_destino = rm_inicio
        room_goto(global.sala_destino)
        //fazendo a musica parar
        audio_stop_all()
    }
}

//Criando o metodo para desenhar o menu de pause
desenhar_botao_pause = function()
{
    var _pos_x = display_get_gui_width() - 32; 
    var _pos_y = 32;
    
    draw_sprite(spr_botao_pause, 0, _pos_x, _pos_y)
    draw_sprite(spr_botao_contorno_pause, 0, _pos_x - 36, _pos_y)
}

// Método para desenhar a aba de sair e os elementos quando pausado
desenhar_menu_sair = function()
{
    if (pausado)
    {
        
        //faznedo ele desenhar no centro dela
        var _centro_x = display_get_gui_width() / 2;
        var _centro_y = display_get_gui_height() / 2;
        
        //criando as variaveis de escala do jogo
        var _escala_menu = 3;
        var _largura_menu = sprite_get_width(spr_menu_sair) * _escala_menu;
        var _altura_menu = sprite_get_height(spr_menu_sair) * _escala_menu;
        
        //tentando criar no centro da tela
        var _menu_x = _centro_x - (_largura_menu / 2);
        var _menu_y = _centro_y; 
        
        draw_sprite_ext(spr_menu_sair, 0, _menu_x, _menu_y, _escala_menu, _escala_menu, 0, c_white, 1);
        
        var _escala_botao = 0.8;
        var _largura_botao = sprite_get_width(spr_botao_sair) * _escala_botao;
        
        var _botao_x = _centro_x - (_largura_botao / 2);
        var _botao_y = _centro_y + 30; 
        
        //desenhando a sprite do botão 
        draw_sprite_ext(spr_botao_sair, 0, _botao_x, _botao_y - 25, _escala_botao, _escala_botao, 0, c_white, 1);
        
        //desenhando o contorno do botão
        draw_sprite_ext(spr_botao_contorno, 0, _botao_x, _botao_y - 25, _escala_botao, _escala_botao, 0, c_white, 1);
    }
}