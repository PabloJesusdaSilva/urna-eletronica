programa {
	funcao inicio() {
		cadeia primeiroCandidato, segundoCandidato, terceiroCandidato
		inteiro votosCandidato1 = 0, votosCandidato2 = 0, votosCandidato3 = 0, votosTotais = 0, votoEmBranco = 0, votoNulo = 0, senha, candidatos

			escreva("Digite a sua senha: ")
			leia(senha)

			escreva("Digite o nome do primeiro candidato: ")
			leia(primeiroCandidato)

			escreva("Digite o nome do segundo candidato: ")
			leia(segundoCandidato)

			escreva("Digite o nome do terceiro candidato: ")
			leia(terceiroCandidato)
			limpa()


		faca {
			escreva("\n1 | ", primeiroCandidato, "\n2 | ", segundoCandidato, "\n3 | ", terceiroCandidato, "\n4 | Voto em branco", "\n5 | Voto nulo\n", "\nDigite a sua senha para encerrar a votação\n")
		  	escreva("\nDigite o número do seu candidato : \n")
		  	
			leia(candidatos) 

		  	
		  	
			escolha (candidatos) {
				caso 1:
					limpa()
					escreva("Você votou no candidato ", primeiroCandidato)
					votosCandidato1++
					votosTotais++
					pare

				caso 2:
					limpa()
					escreva("Você votou no candidato ", segundoCandidato)
					votosCandidato2++
					votosTotais++
					pare
					
				caso 3:
					limpa()
					escreva("Você votou no candidato ", terceiroCandidato)
					votosCandidato3++
					votosTotais++
					pare
					
				caso 4:
					limpa()
					escreva("Você votou em BRANCO")
					votoEmBranco++
					votosTotais++
					pare
					
				caso 5:
					limpa()
					escreva("Você votou NULO")
					votoNulo++
					votosTotais++
					pare
			}

			
		} enquanto (candidatos != senha)

			limpa()
		
			escreva("Votação encerrada \n")
			escreva("\nVotos: ", primeiroCandidato, "  ", votosCandidato1, "\n")
			escreva("Votos: ", segundoCandidato, "  ",votosCandidato2, "\n")
			escreva("Votos: ", terceiroCandidato, "  ",votosCandidato3, "\n")
			escreva("Votos em branco: ", votoEmBranco, "\n")
			escreva("Votos nulos: ", votoNulo, "\n")
			escreva("Total de votos: ", votosTotais, "\n")


			se (votosCandidato1 > votosCandidato2 e votosCandidato1 > votosCandidato3) {
				escreva("\nO vencedor é: ", primeiroCandidato, "\n")
			} senao se (votosCandidato2 > votosCandidato1 e votosCandidato2 > votosCandidato3) {
				escreva("\nO vencedor é: ", segundoCandidato, "\n")
			} senao se ( votosCandidato3 > votosCandidato1 e votosCandidato3 > votosCandidato2) {
				escreva("O vencedor é: ", terceiroCandidato, "\n")
			} senao {
				escreva("\nEmpate\n")
			}
		}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 794; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {primeiroCandidato, 3, 9, 17}-{segundoCandidato, 3, 28, 16}-{terceiroCandidato, 3, 46, 17}-{votosCandidato1, 4, 10, 15}-{votosCandidato2, 4, 31, 15}-{votosCandidato3, 4, 52, 15}-{votosTotais, 4, 73, 11}-{votoEmBranco, 4, 90, 12}-{votoNulo, 4, 108, 8}-{senha, 4, 122, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */