Algoritmo "A Dois"
const
   val = 50
Var
   clie: vetor[1..val, 1..4] de caractere
   dest: vetor[1..val, 1..3] de caractere
   i, j, c:inteiro
   flag:inteiro
   op, boo, clien, desti:caracter
   //clie(vetor[matriz]):clientes; dest(vetor[matriz]):destinos; op:opção; boo:boolean;
   //clien(consulta):cliente; desti(consulta): destino
Inicio
   repita

      limpatela
      c <- 1
      escreval("=====================A Dois=====================")
      escreval("Para cadastrar cliente digite 1")
      escreval("Para cadastrar destinos digite 2")
      escreval("Para mostrar clientes cadastrados digite 3")
      escreval("Para mostrar a lista de destinos digite 4")
      escreval("Para sair do programa digite 5")
      escreval("=====================Viagens====================")
      leia(op)
      escolha op

      caso "1"

         limpatela
         para i de 1 ate val faca
            escreval("=====================A Dois=====================")
            escreva("Digite o nome do ", i, "° cliente: ")
            leia(clie[i])
            para j de 1 ate 1 faca
               escreva("Digite o telefone: ")
               leia(clie[i, 2])
               escreva("Digite o email: ")
               leia(clie[i, 3])
               escreva("Digite o endereço: ")
               leia(clie[i, 4])
               escreva("Cadastro Finalizado com sucesso!")
               escreval("")
               interrompa
            fimpara

            escreva("Deseja realizar outro cadastro? (S/N): ")
            leia(boo)
            se (boo = "N") ou (boo = "n") entao
               interrompa
               limpatela
            fimse
         fimpara

      caso "2"
         limpatela
         para i de 1 ate val faca
            escreval("=====================A Dois=====================")
            escreva("Digite o nome do ", i, "° destino: ")
            leia(dest[i])
            para j de 1 ate 1 faca
               escreva("Digite o estado: ")
               leia(dest[i, 2])
               escreva("Digite a cidade: ")
               leia(dest[i, 3])
               escreva("Cadastro Finalizado com sucesso!")
               escreval("")
               interrompa
            fimpara
            escreva("Deseja realizar outro cadastro? (S/N): ")
            leia(boo)
            se (boo = "N") ou (boo = "n") entao
               interrompa
               limpatela
            fimse
         fimpara

      caso "3"
         limpatela
         repita
            escreval("=====================A Dois=====================")
            escreva("Digite o nome a ser consultado: ")
            leia(clien)
            enquanto (c <= 50) faca
               se (clien) <> (clie[c]) entao
                  c <- c+1
               senao
                  escreval("Nome: ", clie[c])
                  escreval("Telefone: ",  clie[c, 2])
                  escreval("E-Mail: ",  clie[c, 3])
                  escreval("Endereço: ",  clie[c, 4])
                  escreval("")
                  escreval("Digite 2 para continuar.")
                  leia(flag)
                  interrompa
                  limpatela
               fimse
            fimenquanto
         ate flag="2"

      caso "4"
         limpatela
         repita
            escreval("=====================A Dois=====================")
            escreva("Digite o destino a ser consultado: ")
            leia(desti)
            enquanto (c <= 50) faca
               se (desti) <> (dest[c]) entao
                  c <- c+1
               senao
                  escreval("Nome: ", dest[c])
                  escreval("Telefone: ",  dest[c, 2])
                  escreval("E-Mail: ",  dest[c, 3])

                  escreval("")
                  escreval("Digite 2 para continuar.")
                  leia(flag)
                  interrompa
                  limpatela
               fimse
            fimenquanto
         ate flag="2"

      caso "5"
         limpatela
         escreval("=====================A Dois=====================")
         escreval("OBRIGADO POR UTILIZAR NOSSA PLATAFORMA :)")
      outrocaso
         limpatela
         escreval("Opção inválida!!!")
         escreval("")
      fimescolha
   ate op = "5"
Fimalgoritmo