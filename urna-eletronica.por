

programa {
	
	inclua biblioteca Tipos --> tp
	inclua biblioteca Matematica --> mat
	inclua biblioteca Sons --> sn
	funcao inicio() {

		inteiro 
			votosCandidato1 = 0, 
			votosCandidato2 = 0, 
			votosCandidato3 = 0, 
			votosTotais = 0, 
			votoEmBranco = 0, 
			votoNulo = 0, 
			senha, 
			candidatos,
			som = sn.carregar_som("sons/confirmacao_urna.mp3")
			
		real 
		 	percentualCandidato1 = 0.0,
			percentualCandidato2 = 0.0,
			percentualCandidato3 = 0.0,
			percentualVotoEmBranco = 0.0,
			percentualVotoNulo = 0.0
			
		cadeia primeiroCandidato, 
			segundoCandidato, 
			terceiroCandidato, 
			fimDaVotacao

			escreva(">> Digite a sua senha: ")
			leia(senha)

			escreva(">> Digite o nome do primeiro candidato: ")
			leia(primeiroCandidato)

			escreva(">> Digite o nome do segundo candidato: ")
			leia(segundoCandidato)

			escreva(">> Digite o nome do terceiro candidato: ")
			leia(terceiroCandidato)
			
			limpa()


		faca {
			escreva("\n1 | ", primeiroCandidato, "\n2 | ", segundoCandidato, "\n3 | ", terceiroCandidato, "\n4 | Voto em branco", "\n5 | Voto nulo\n", "\nDigite a sua senha para encerrar a votação\n")
			
		  	escreva("\n>> Digite o número do seu candidato: ")
			leia(candidatos) 
			
		  	
			escolha (candidatos) {
				caso 1:
					limpa()
					sn.reproduzir_som(som, falso)
					votosCandidato1++
					votosTotais++
					pare

				caso 2:
					limpa()
					sn.reproduzir_som(som, falso)
					votosCandidato2++
					votosTotais++
					pare
					
				caso 3:
					limpa()
					sn.reproduzir_som(som, falso)
					votosCandidato3++
					votosTotais++
					pare
					
				caso 4:
					limpa()
					sn.reproduzir_som(som, falso)
					votoEmBranco++
					votosTotais++
					pare
					
				caso 5:
					limpa()
					sn.reproduzir_som(som, falso)
					votoNulo++
					votosTotais++
					pare

				caso contrario:
					escreva("\n>> Opção invalida\n")
			}
			
		} enquanto (candidatos != senha)

			limpa()

			escreva(">> Deseja realmente encerrar a votação? (S/N:) ")
			leia(fimDaVotacao)

			limpa()

			se (votosTotais != 0) {
				escreva("Votos totais: ", votosTotais, "\n")
				escreva("Votos no candidato ", primeiroCandidato, ": (", votosCandidato1, mat.arredondar(tp.inteiro_para_real(votosCandidato1) / Tipos.inteiro_para_real(votosTotais) * 10.0, 2), ") \n")
				escreva("Votos no candidato ", segundoCandidato, ": (", votosCandidato2, mat.arredondar(tp.inteiro_para_real(votosCandidato2) / Tipos.inteiro_para_real(votosTotais) * 10.0, 2), ") \n")
				escreva("Votos no candidato ", terceiroCandidato, ": (", votosCandidato3, mat.arredondar(tp.inteiro_para_real(votosCandidato3) / Tipos.inteiro_para_real(votosTotais) * 10.0, 2), ") \n")
				escreva("Votos em branco: (", votoEmBranco, mat.arredondar(tp.inteiro_para_real(votoEmBranco) / tp.inteiro_para_real(votosTotais) * 10.0, 2), ") \n")
				escreva("Votos nulos: (", votoNulo, mat.arredondar(tp.inteiro_para_real(votoNulo) / tp.inteiro_para_real(votosTotais) * 10.0, 2), ") \n")

				se (votosCandidato1 > votosCandidato2 e votosCandidato1 > votosCandidato3) {
					escreva("\nO vencedor é: ", primeiroCandidato, "\n")
				} senao se (votosCandidato2 > votosCandidato1 e votosCandidato2 > votosCandidato3) {
					escreva("\nO vencedor é: ", segundoCandidato, "\n")
				} senao se ( votosCandidato3 > votosCandidato1 e votosCandidato3 > votosCandidato2) {
					escreva("O vencedor é: ", terceiroCandidato, "\n")
				} senao {
					escreva("\nEmpate\n")
				}
			} senao {
				escreva("Não há votos para serem apurados!")
			} 
		}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3529; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */