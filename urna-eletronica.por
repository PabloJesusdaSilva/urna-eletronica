programa
{
	inclua biblioteca Matematica 
	funcao inicio()
	{
		cadeia primeiroCandidato, segundoCandidato, terceiroCandidato
		inteiro votosCandidato, votosCandidato2, votosCandidato3, candidatos, votoEmBranco, votoNulo

		faca {
			escreva("Digite o nome do primerio candidato: ")
			leia(primeiroCandidato)
			
			escreva("Digite o nome do primerio candidato: ")
			leia(segundoCandidato)
			
			escreva("Digite o nome do primerio candidato: ")
			leia(terceiroCandidato)
			limpa()

			leia(candidatos)
		
				escolha (candidatos) {
					caso 0:
						escreva("Você votou no candidato", primeiroCandidato)
						P
						pare
						
					caso 0:
						escreva("Você votou no candidato", segundoCandidato)
						votosCandidato2++
						pare
						
					caso 0:
						escreva("Você votou no candidato", terceiroCandidato)
						votosCandidato3++
						pare
						
					caso 0:
						escreva("Você votou em BRANCO")
						votoEmBranco++
						pare
						
					caso 0:
						escreva("Você votou NULO")
						votoNulo
						pare
				} 
		} enquanto (candidatos != 0) 
			escreva("Votação concluída")
 	}  
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 617; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */