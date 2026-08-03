/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//iremos criar uma variavel chamada trem que por padrão será zero
treme = 0
//Criando o metodo screenshake
treme_tela = function()
{
    //Criando o if para rodar no tremo
    if(treme > 0.1)
    {
        var _x = random_range(treme, -treme)
        var _y = random_range(-treme, treme)
        
        //chamando o viewport x que define a posição da janela
        view_set_xport(view_current, _x)
        view_set_yport(view_current, _y)
    }
    else 
    {
        //se não
        //iremos resetar o treme para zero
    	treme = 0
        //e fará com que a minha janela volte ao normal
        view_set_xport(view_current, 0)
        view_set_yport(view_current, 0)
    }
    treme = lerp(treme, 0, .1)
}