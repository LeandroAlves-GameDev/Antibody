/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

draw_self()

gpu_set_blendmode(bm_add);

draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, 0.7);

gpu_set_blendmode(bm_normal);
