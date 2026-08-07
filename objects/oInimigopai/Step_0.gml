/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

mover()

tira_vida_player()

hitflash()

//Criando um sistema rapido para matar inimigos
if (y > room_height + 64)
{
    instance_destroy()
    //show_message("morri")
}