/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Inherit the parent event
event_inherited();

tipo_reacao = "Mover"
//criando a velocidade de rotação
vel_rotacao = 0

ja_caiu = false

reagir = function(_direcao)
{
    if(ja_caiu == false)
    {
        ja_caiu = true
        vel_rotacao = 9
        vspeed = random_range(-2, -4)
        vida_colisor = 1
        
        var bloco_cima = instance_place(x, y - 1, oSolidoPai)
        if(bloco_cima != noone)
        {
            bloco_cima.reagir(_direcao)
        }
    }
}


colide_chao = function()
{
    if(place_meeting(x, y + vspeed, oSolidoPai))
    {
        while (!place_meeting(x, y + sign(vspeed), oSolidoPai))
        {
        	y += sign(vspeed)
        }
        vspeed = 0
    }
}

aplica_fisica = function()
{
    if (!place_meeting(x, y + 1, oSolidoPai)) 
    {
        vspeed += 0.3
    }
    
    colide_chao()
    
    y += vspeed
    
    image_angle += vel_rotacao
    vel_rotacao *= 0.9
}