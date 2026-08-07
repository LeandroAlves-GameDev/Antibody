/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

atualiza_posicao_arma()

perde_vida()

hitflash()

//Criando a mecanica de movimentos do player
var left = keyboard_check(ord("A")) || keyboard_check(vk_left)
var right = keyboard_check(ord("D")) || keyboard_check(vk_right)
var up    = keyboard_check(ord("W")) || keyboard_check(vk_up)
var down  = keyboard_check(ord("S")) || keyboard_check(vk_down)

var dir_x = right - left
var dir_y = down - up

if (dir_x != 0)
{
    x += dir_x * velh;
    image_xscale = dir_x; //ira o sprite para a direção que anda
}
if (dir_y != 0)
{
    y += dir_y * velv; 
}

//Criando um sistema para limitar a saida do player
x = clamp(x, 32, room_width - 32)
y = clamp(y, 32, room_height - 32)