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

//Criando um metodo de dano
frag_aplica_dano = function()
{
    var _frag_dano = instance_place(x, y, oInimigopai)
    //ele vai verificar se minha posição está colidindo com alguma outra instancia
    if(_frag_dano != noone)
    {
        oScreenshake.treme = 8
        _frag_dano.recebe_dano(1, image_angle)
        //se estiver então ele 
        //destroi meu fragmento
        instance_destroy()
    }
}
