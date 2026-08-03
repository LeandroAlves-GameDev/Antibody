/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
draw_self()

if (alarme_hit > 0)
{
    shader_set(sh_branco);
    draw_self();
    shader_reset();
}
else 
{
    // Se não estiver tomando hit, desenha normal
    draw_self();	
}