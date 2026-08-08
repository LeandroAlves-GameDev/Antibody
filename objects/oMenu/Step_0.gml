/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

controle_menu()

if(global.estou_em_transicao == true)
{ 
   //rodando um if para ver se estou transição
   //se estivermos no index  zero, iremos ser direcionado para a room_jogo
   global.tempo_sequencia++
   //ganhando valor na variavel tempo_sequencia
   if(global.tempo_sequencia >= global.tempo_sequencia_maxima ) 
   {
       //se meu tempo_sequencia maior ou igual ao meu tempo_sequencia_maxima e meu interruptor estiver
       //ativado então ele me mandará para a room do jogo e resetará o tempo ganho 
       room_goto(global.sala_destino)
       //resetando o tempo 
       global.tempo_sequencia = 0
       layer_sequence_destroy(sq_transicao)
    
   }
   
}
