programa
{
	
	funcao inicio()
	{
		 inteiro menu, sair = 1
    real saldo = 0, saque = 0, deposito
    cadeia extrato = ""
    
    faca{
    escreva("|-------MENU-------|           \n")
    escreva("      SALDO ","R$",saldo,"\n")
    escreva("|     1 SAQUE      |           \n")
    escreva("|     2 DEPOSITO   |           \n")
    escreva("|     3 EXTRATO    |           \n")
    escreva("|     0 SAIR       |           \n")
    escreva("|------------------|           \n")
    escreva("digite sua escolha --> ")
    leia(menu)
    limpa()
    enquanto(menu > 7)
    {
      escreva("digite um numero válido: ")
      leia(menu)
    }
    escolha(menu)
    {
      caso 1:
      //saque
      se(saldo == 0)
      {
        escreva("saldo indisponivel! \n")
      }
      senao
      {
        escreva("digite o valor do saque: ")
        leia(saque)
        enquanto(saque <= 0)
        {
          escreva("valor invalido, digite novamente: ")
          leia(saque)
        }
      }
      
        se(saque > saldo)
        {
        escreva("saldo indisponível!")
        }
        saldo = saldo - saque
        escreva("saque realizado com sucesso! \n")
        extrato =  + extrato + "-R$"+saque+"\n"
        
        
      pare

      caso 2:
      //deposito
      escreva("informe o valor do deposito: ")
      leia(deposito)
      enquanto(deposito <= 0){
        escreva("valor invalido, digite novamente: ")
        leia(deposito)
      }
      
      saldo = saldo + deposito
      escreva("deposito realizado com sucesso!\n \n")
      extrato =  extrato + "+R$"+deposito+"\n"
      
      pare

      caso 3:
      //extrato
      escreva(extrato, "\n")
      enquanto(sair != 0)
      {
        escreva("digite 0 para sair")
        leia(sair)
        limpa()
      }

      pare

    }
  }enquanto(menu != 0)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1199; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */