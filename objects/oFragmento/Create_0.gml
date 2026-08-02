/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


//Criando um metodo para destruir o fragmento
destroi_frags = function()
{
    //Criando um sistema de if para destruir os objetos fragmentos
        if(x > room_width || x < -32)
        {
            //show_message("Destruido eixo X")
            instance_destroy()
        }
        if(y < -32 || y > room_height)
        {
            //show_message("Destruido eixo y")
            instance_destroy()
        }
}