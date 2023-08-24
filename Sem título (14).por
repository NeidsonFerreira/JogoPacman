programa {
  funcao inicio() {
   
    cadeia mapa[5][5]
    inteiro linha=0, coluna=0
    inteiro ultimaLinha=0, ultimaColuna=0
    caracter direcao
    inteiro pontos=0
    logico parar=falso

  //Preenchendo a mapa de jogo com "_"
    para (inteiro i=0;i<5;i++){
      para (inteiro j=0;j<5;j++){
        mapa[i][j] = "[ ]"
      }
    }
    //Criando posicoes para os obstaculos
    mapa[0][4] = "[#]"
    mapa[2][2] = "[#]"
    mapa[4][4] = "[#]"
   
    //Definindo a posicao inicial da personagem
    mapa[0][0]= "[@]"

    //Mostrando a versão inicial do mapa
    para (inteiro i=0;i<5;i++){
      para (inteiro j=0;j<5;j++){
        escreva(mapa[i][j], " ")
      }
    escreva("\n")
    }    

    //Lendo um comando para movimentar a personagem
    enquanto(parar==falso){
      escreva("Pontos: ", pontos, "\n")
      escreva("Digite o comando: ")
      leia(direcao)
      limpa()
      //Verificando qual tecla foi pressionada
      escolha(direcao){
        caso "s":
          linha++
          pare
        caso "a":
          coluna--
          pare
        caso "w":
          linha--
          pare
        caso "d":
          coluna++
          pare
        caso contrario:
          pare
      }
      //Resetando qual foi a última posição que a personagem esteve
      mapa[ultimaLinha][ultimaColuna]="[ ]"
     
      //Definindo a nova posição da personagem no mapa
      mapa[linha][coluna]="[@]"
     
      //Exibindo o mapa de jogo atualizado
      para (inteiro i=0;i<5;i++){
       para (inteiro j=0;j<5;j++){
          escreva(mapa[i][j], " ")
       }
       escreva("\n")
      }

      //Verificando colisões [0,4] [2,2] [4,4]
      se(linha==0 e coluna==4) parar=verdadeiro
      se(linha==2 e coluna==2) parar=verdadeiro
      se(linha==4 e coluna==4) parar=verdadeiro

      //Caso tenha ocorrido uma colisão a flag parar torna-se verdadeira
      se(parar) escreva("Game over!")
      senao pontos+=100  

      //Memorizando a última posição da personagem
      ultimaLinha=linha
      ultimaColuna=coluna
    }
  }
   
}
