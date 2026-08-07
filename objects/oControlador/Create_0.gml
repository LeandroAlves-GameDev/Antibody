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
    draw_text(inv_x + 47, inv_y + 10, "5000")
}