

programa {
	
	inclua biblioteca Matematica --> mat
	inclua biblioteca Calendario --> cl
	inclua biblioteca Tipos
	inclua biblioteca Sons
	inclua biblioteca Util
	
	funcao inicio() {

		inteiro 
			votosCandidato1 = 0, 
			votosCandidato2 = 0, 
			votosCandidato3 = 0, 
			votosTotais = 0, 
			votoEmBranco = 0, 
			votoNulo = 0, 
			senha, 
			candidatos
			
			
		real 
		 	percentualCandidato1 = 0.0,
			percentualCandidato2 = 0.0,
			percentualCandidato3 = 0.0,
			percentualVotoEmBranco = 0.0,
			percentualVotoNulo = 0.0
			
		cadeia 
			primeiroCandidato, 
			segundoCandidato, 
			terceiroCandidato, 
			fimDaVotacao

			escreva(">> Digite a sua senha: ")
			leia(senha)
			limpa()

			escreva(">> Digite o nome do primeiro candidato: ")
			leia(primeiroCandidato)

			escreva(">> Digite o nome do segundo candidato: ")
			leia(segundoCandidato)

			escreva(">> Digite o nome do terceiro candidato: ")
			leia(terceiroCandidato)
			
			limpa()


		faca {

			dataEHora()
			escreva("\n1 | ", primeiroCandidato, "\n2 | ", segundoCandidato, "\n3 | ", terceiroCandidato, "\n4 | Voto em branco", "\n5 | Voto nulo\n")
			escreva("\nDigite a sua senha para encerrar a votação\n")
			
		  	escreva("\n>> Digite o número do seu candidato: ")
			leia(candidatos) 
			
			
		  	
			escolha (candidatos) {
				caso 1:
					limpa()
					somConfirmacao()
					
					votosCandidato1++
					votosTotais++
					pare

				caso 2:
					limpa()
					somConfirmacao()
					
					votosCandidato2++
					votosTotais++
					pare
					
				caso 3:
					limpa()
					somConfirmacao()
					
					votosCandidato3++
					votosTotais++
					pare
					
				caso 4:
					limpa()
					somConfirmacao()
					
					votoEmBranco++
					votosTotais++
					pare
					
				caso 5:
					limpa()
					somConfirmacao()
					
					votoNulo++
					votosTotais++
					pare

				caso contrario:
					escreva("\n>> Opção invalida <<\n")
			}
			
		} enquanto (candidatos != senha)
			limpa()

			escreva(">> Deseja realmente encerrar a votação? (S/N): ")
			leia(fimDaVotacao)

			limpa()

			se (votosTotais != 0) {
				escreva("\n")
				 
				escreva("\nVotos totais: ", votosTotais, "\n")
				escreva("\nVotos do candidato: ", primeiroCandidato, " (", Tipos.inteiro_para_real(percentual(votosCandidato1, votosTotais)),")\n")
				escreva("\nVotos do candidato: ", segundoCandidato, " (", Tipos.inteiro_para_real(percentual(votosCandidato2, votosTotais)),")\n")
				escreva("\nVotos do candidato: ", terceiroCandidato, " (", Tipos.inteiro_para_real(percentual(votosCandidato3, votosTotais)),")\n")
				escreva("\nVotos em branco: ", " (", Tipos.inteiro_para_real(percentual(votoEmBranco, votosTotais)),")\n")
				escreva("\nVotos nulos: ", " (", Tipos.inteiro_para_real(percentual(votoNulo, votosTotais)),")\n")
			

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

		// fecha a função inicio()
		}

	funcao somConfirmacao() {
		inteiro somUrna = Sons.carregar_som("sons/confirmacao_urna.mp3")

		Sons.reproduzir_som(somUrna, falso)
	}

	funcao  dataEHora() {
		inteiro 
			diaAtual = cl.dia_mes_atual(),
			mesAtual = cl.mes_atual(),
			anoAtual = cl.ano_atual(),
			minuto = cl.minuto_atual(),
			hora = cl.hora_atual(falso)

			escreva("Data: ", diaAtual, "/", mesAtual, "/", anoAtual)
			
			escreva("\nHora de inicio: ", hora, ":", minuto)
			escreva("\nHora do término: ", hora, ":", minuto)
			
	}

	funcao real percentual(real parcial, real total) {
		retorne mat.arredondar((parcial / total * 100), 2)
	}
		

// fecha o progama
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3332; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */