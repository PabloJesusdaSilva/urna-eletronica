programa
{
	inclua biblioteca Matematica --> mat
	funcao inicio()
	{
		inteiro opcao, candidato1 = 0, candidato2 = 0, candidato3 = 0, votoEmBranco = 0, votoNulo = 0
		real percentual

		faca {
			escreva("1 -> Cantidado 1 \n", "2 -> Cantidado 2 \n", "3 -> Cantidado 3 \n", "4 -> Voto em branco \n", "5 -> Voto nulo \n", "0 -> Encerrar a votação \n \n", "Digite um número: ")
			leia(opcao)
			limpa()
			
				escolha (opcao) {
					caso 0:
						escreva("Obrigado pelo seu voto!\n \n")
						pare
						
					caso 1:
						escreva("Você votou no CANDIDATO 1! \n")
						candidato1++
						pare
						
					caso 2:
						escreva("Você votou no CANDIDATO 2! \n")
						candidato2++
						pare
						
					caso 3:
						escreva("Você votou no CANDIDATO 3! \n")
						candidato3++
						pare
						
					caso 4:
						escreva("Você votou em BRANCO! \n")
						votoEmBranco++
						pare
						
					caso 5:
						escreva("Você votou NULO \n")
						votoNulo++
						pare
					}	
					
			} enquanto (opcao != 0) 

			
				
				escreva("Votação concluiuda! \n \n")
			
				escreva("O número de votos do CANDIDATO 1 foi:", candidato1, "\n")
				escreva("O número de votos do CANDIDATO 2 foi:", candidato2, "\n")
				escreva("O número de votos do CANDIDATO 3 foi:", candidato3, "\n")
				escreva("O número de votos em BRANCO foi:", votoEmBranco, "\n")
				escreva("O número de votos NULOS foi:", votoNulo "\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 0; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */