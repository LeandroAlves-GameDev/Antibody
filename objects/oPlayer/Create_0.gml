/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


//Criando um metodo onde ele vai segurar a arma
segura_arma = function()
{
    //Criando uma instancia onde ele vai segurar nossa arma
    minha_arma = instance_create_layer(x, y, "Gun", oGun)
}

segura_arma()

atualiza_posicao_arma = function()
{
    if (instance_exists(minha_arma))
    {
        minha_arma.x = x;
        minha_arma.y = y;
    }
}