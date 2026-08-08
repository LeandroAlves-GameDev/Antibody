// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações


//Criando uma variavel global para indicar onde estamos indo
global.sala_destino = noone

//criando um sistema de pausa no jogo
global.pausado = noone

//Criando o sistema de transição para p jogo
global.tempo_sequencia = 0
//por padrão ele será zero
global.tempo_sequencia_maxima = 60
//limite maximo e de 60 frames
global.estou_em_transicao = false