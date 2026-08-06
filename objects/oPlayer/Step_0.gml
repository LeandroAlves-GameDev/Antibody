/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

atualiza_posicao_arma()

perde_vida()

hitflash()

//Criando a mecanica de movimentos do player
var left = keyboard_check(ord("A")) || keyboard_check(vk_left)
var right = keyboard_check(ord("D")) || keyboard_check(vk_right)

var dir_movimento = right - left

if(right|| left)
{
    x += dir_movimento * velh
    image_xscale = dir_movimento
}


//Criando um sistema para limitar a saida do player
if(x > room_width || x < 0)
{
    //se meu x da room for maior que a largura dela ou x for menor que 0
    //então meu x e igual a clamp
    x = clamp(x, 16, room_width - 16)
}
