/*****************************************************************************************************************************************************************************************
************************************************************************************ Programa DINO TV ************************************************************************************
******************************************************************************************************************************************************************************************
*                                                                                                                                                                                        *
*  Algoritmo criado com o Portugol e Portugol Studio para a conclusão do Módulo I do programa Novos Talentos: Curso de qualificação socioprofissional em programação em software oferecido 
*  pelo Governo de Pernamuco através da Secretaria doo Trabalho - SETEQ.                                                                                                                 *
*                                                                                                                                                                                        *
*  Equipe:
*  Designer: Gustavo Aguiar
*  Desenvolvedora: Gleyce Alves
*  Business: Luciana Ifamayer, Rafaela Correia e Raiane Correia                                                                                                                                                                 *
*  Professor: Lucas Santos                                                                                                                                                               *
*                                                                                                                                                                                        *
******************************************************************************************************************************************************************************************
******************************************************************************************************************************************************************************************
******************************************************************************************************************************************************************************************/

programa
{
	inclua biblioteca Calendario --> c //biblioteca para hora/mês/ ano etc
	inclua biblioteca Graficos --> g // inicia a interface gráfica no portugol
	inclua biblioteca Util --> u // define delay de atualização do jogo
	inclua biblioteca Mouse --> m //captura entrada mouse
	
	// Definindo as constantes para a interface gráfica
	const inteiro largura_janela = 720, altura_janela =720, MENU_PRINCIPAL = 11, tela_atual = 0

	 //inteiro para carregar imagens
	 
	inteiro bronze = g.carregar_imagem("plano_bronze.jpeg"), prata = g.carregar_imagem("plano_prata.jpeg"), ouro = g.carregar_imagem("plano_ouro.jpeg"), 
	rubi = g.carregar_imagem("plano_rubi.jpeg"), painel_principal = g.carregar_imagem("painel-principal.jpeg"), painel_plano = g.carregar_imagem("painel-planos.jpg"), 
	adeus = g.carregar_imagem("bye.jpg"), codigo_barras = g.carregar_imagem("codigo-barras.png")
	
	inteiro plano, confirma = 0, idade = 0

	cadeia nome = "null"
	
	//inteiro para mostrar hora
	inteiro horarioH = c.hora_atual(falso)
	inteiro horarioM = c.minuto_atual()
	cadeia Cumprimento = ""
	logico para_cima = falso, para_baixo=falso

	funcao inicio()
	{
		montaJanela()
		criaCadastro()
		u.aguarde(1000)
		desenhaTelaMenu()
		enquanto(verdadeiro){
			corFundoPadrao()
			mostraHora(horarioH)
			interacaoBotaoMenuPlanos()
			interacaoBotaoSair()
			
			g.definir_cor(g.COR_PRETO)
			g.definir_tamanho_texto(18.0)
			g.desenhar_texto(50, 30, Cumprimento + " Seja Bem Vindo(a), " + nome + "!\n")
			g.desenhar_texto(50, 50, "\nVamos conhecer nossos planos? ")
			g.desenhar_texto(50, 70, "Agora são: " + horarioH + " horas e "+ horarioM + " minutos")
			g.renderizar()
			}
	}

// Funções para estruturação do código //
 
	funcao mostraHora(inteiro hora){
		se(hora >= 5 e hora < 12){
			Cumprimento = "Bom Dia!"
		}senao se(hora >= 12 e hora <= 17){
			Cumprimento = "Boa Tarde!"
		}senao{
			Cumprimento = "Boa Noite!"
		}
	}

	funcao criaCadastro(){

		escreva("\nQual o seu nome? ")
		leia(nome)
		escreva("\nQual sua idade? ")
		leia(idade)
		
		se (idade >= 18){
			desenhaTelaMenu()
			g.renderizar()
		}

		senao{
			escreva("\nInfelizmente você não pode aderir a nenhum dos nossos planos. A idade mínima permitida é de 18 anos. ", "\n")
			mostraSair()
			g.renderizar()
		}
	}

	funcao escolhePlano(){

		escreva("\nQual o plano você tem interesse?  \n 1 para o plano Bronze;\n 2 para o plano Prata;\n 3 para o plano Ouro;\n 4 para o plano Rubi.\n Digite: ") 
		leia(plano)
		
		se (plano == 1){
			
			g.iniciar_modo_grafico(verdadeiro)
			g.definir_dimensoes_janela(400,711)
			g.definir_titulo_janela("Plano Bronze")	
			g.desenhar_imagem(0,0,bronze)
			g.renderizar()
			confirmaPlano()
			g.renderizar()
		}
			
		senao se (plano == 2){
			
			g.iniciar_modo_grafico(verdadeiro)
			g.definir_dimensoes_janela(400,711)
			g.definir_titulo_janela("Plano Prata")
			g.desenhar_imagem(0,0,prata)
			g.renderizar()
			confirmaPlano()
			g.renderizar()
		}
			
		senao se (plano == 3){
			
			g.iniciar_modo_grafico(verdadeiro)
			g.definir_dimensoes_janela(400,711)
			g.definir_titulo_janela("Plano Ouro")
			g.desenhar_imagem(0,0,ouro)
			g.renderizar()
			confirmaPlano()
			g.renderizar()
		}
			
		senao se (plano == 4){
			
			g.iniciar_modo_grafico(verdadeiro)
			g.definir_dimensoes_janela(400,711)
			g.definir_titulo_janela("Plano Rubi")
			g.desenhar_imagem(0,0,rubi)
			g.renderizar()
			confirmaPlano()
			g.renderizar()
		}
		
		senao{
			escreva("\nNúmero inválido! Digite qualquer número para voltar ao menu de seleção: ")
			leia(plano)

			escolhePlano()	
		}
		}

	funcao confirmaPlano(){
		escreva("\nDigite 0 para confirmar seu pedido: ")
		leia(confirma)
		
		se(confirma == 0){

			mostraPagamento()
		}
		
		senao{
			desenhaTelaMenu()

		}}


// Janelas: Interface Gráfica //

	funcao montaJanela(){
		g.iniciar_modo_grafico(verdadeiro)
		g.definir_dimensoes_janela(largura_janela, altura_janela)
		g.definir_titulo_janela("Bem vindo a Dino TV!")
		g.desenhar_imagem(0,0,painel_principal)
		g.renderizar()
	}

	funcao desenhaTelaMenu(){
		g.iniciar_modo_grafico(verdadeiro)
		g.definir_titulo_janela("Menu Inicial")
		g.definir_dimensoes_janela(600, 600)
		
	}

	funcao mostraMenuPlanos(){
		g.iniciar_modo_grafico(verdadeiro)
		g.definir_dimensoes_janela(1120, 489)
		g.definir_titulo_janela("Planos disponiveis na Dino TV")
		g.desenhar_imagem(0,0,painel_plano)
		g.renderizar()
		escolhePlano()	
	}

	funcao mostraSair(){
		g.iniciar_modo_grafico(verdadeiro)
		g.definir_dimensoes_janela(largura_janela, altura_janela)
		g.definir_titulo_janela("Uma pena que você tem que ir embora :(")
		g.desenhar_imagem(0,0,painel_principal)
		enquanto(verdadeiro){
		g.desenhar_imagem(0,0,adeus)
		g.definir_cor(g.COR_PRETO)
		g.definir_tamanho_texto(18.0)
		g.desenhar_texto(50, 30, "Uma pena que você tenha que ir embora, " + nome + "!")
		g.desenhar_texto(50, 50, "Qualquer dúvida estamos a disposição! ")
		g.renderizar()
		}
	}

	funcao corFundoPadrao(){
		g.definir_cor(g.COR_BRANCO)
		g.limpar()
	}
	
	funcao mostraPlano1(){
		g.iniciar_modo_grafico(verdadeiro)
		g.definir_dimensoes_janela(400,711)
		g.definir_titulo_janela("Plano Bronze")
		enquanto(verdadeiro){
			g.desenhar_imagem(0,0,bronze)
			g.renderizar()
		}
	}

	funcao mostraPlano2(){
		g.iniciar_modo_grafico(verdadeiro)
		g.definir_dimensoes_janela(400,711)
		g.definir_titulo_janela("Plano Prata")
		enquanto(verdadeiro){
			g.desenhar_imagem(0,0,prata)
			g.renderizar()
		}
	}
		
	funcao mostraPlano3(){
		g.iniciar_modo_grafico(verdadeiro)
		g.definir_dimensoes_janela(400,711)
		g.definir_titulo_janela("Plano Ouro")
		enquanto(verdadeiro){
			g.desenhar_imagem(0,0,ouro)
			g.renderizar()
		}
	}
	
	funcao mostraPlano4(){
		g.iniciar_modo_grafico(verdadeiro)
		g.definir_dimensoes_janela(400,711)
		g.definir_titulo_janela("Plano Rubi")
		enquanto(verdadeiro){
			g.desenhar_imagem(0,0,prata)
			g.renderizar()
		}
	}

	funcao mostraPagamento(){
		g.iniciar_modo_grafico(verdadeiro)
		g.definir_dimensoes_janela(largura_janela, altura_janela)
		g.definir_titulo_janela("Parabéns pela sua compra! Hora do pagamento. ")
		enquanto(verdadeiro){
				g.desenhar_imagem(0,0,codigo_barras)
				g.renderizar()
		}
	}


// Interação com o mouse //


	funcao logico mouse(inteiro x, inteiro y, inteiro a, inteiro b)
	{
		se(m.posicao_x() >= x e m.posicao_y() >= y e m.posicao_x() <= x+a e m.posicao_y() <= y+b)
		{
			retorne verdadeiro
		}
		retorne falso
	}

	funcao interacaoBotaoMenuPlanos(){
		g.definir_cor(g.criar_cor(100, 100, 100))
		g.desenhar_retangulo(120, 320, 90, 35, verdadeiro, verdadeiro)
		g.definir_cor(g.COR_PRETO)
		g.definir_tamanho_texto(16.0)
		g.desenhar_texto(145, 330, "MENU")	
		se(mouse(115, 315, 90, 35) == verdadeiro e m.botao_pressionado(m.BOTAO_ESQUERDO)){
			g.desenhar_retangulo(120, 320, 90, 35, verdadeiro, falso)
			g.definir_cor(g.COR_PRETO)
		     g.definir_tamanho_texto(20.0)
		     g.desenhar_texto(145, 200, "Deseja escolher um de nossos planos? ")
		     mostraMenuPlanos()
			u.aguarde(10000)
	}}

	funcao interacaoBotaoSair(){
		g.definir_cor(g.criar_cor(100, 100, 100))
		g.desenhar_retangulo(400, 320, 90, 35, verdadeiro, verdadeiro)
		g.definir_cor(g.COR_PRETO)
		g.definir_tamanho_texto(16.0)
		g.desenhar_texto(425, 330, "SAIR")	
		se(mouse(395, 315, 90, 35) == verdadeiro e m.botao_pressionado(m.BOTAO_ESQUERDO)){
			g.desenhar_retangulo(400, 320, 90, 35, verdadeiro, falso)
			g.definir_cor(g.COR_PRETO)
		     g.definir_tamanho_texto(20.0)
		     g.desenhar_texto(425, 200, "Você deseja sair? ")
		     mostraSair()
			u.aguarde(10000)
	}}

	funcao interacaoEscolhePlano(){
		g.definir_cor(g.criar_cor(100, 100, 100))
		g.desenhar_retangulo(120, 320, 90, 35, verdadeiro, verdadeiro)
		g.definir_cor(g.COR_PRETO)
		g.definir_tamanho_texto(16.0)
		g.desenhar_texto(145, 330, "Plano 1")	
		se(mouse(115, 315, 90, 35) == verdadeiro e m.botao_pressionado(m.BOTAO_ESQUERDO)){
			g.desenhar_retangulo(120, 320, 90, 35, verdadeiro, falso)
			g.definir_cor(g.COR_PRETO)
		     g.definir_tamanho_texto(20.0)
		     g.desenhar_texto(145, 200, "Plano 1: Bronze")
		     escolhePlano()
		     g.renderizar()
			u.aguarde(50000)
	}}
	
	funcao interacaoBotaoPlano1(){
		g.definir_cor(g.criar_cor(100, 100, 100))
		g.desenhar_retangulo(120, 320, 90, 35, verdadeiro, verdadeiro)
		g.definir_cor(g.COR_PRETO)
		g.definir_tamanho_texto(16.0)
		g.desenhar_texto(145, 330, "Plano 1")	
		se(mouse(115, 315, 90, 35) == verdadeiro e m.botao_pressionado(m.BOTAO_ESQUERDO)){
			g.desenhar_retangulo(120, 320, 90, 35, verdadeiro, falso)
			g.definir_cor(g.COR_PRETO)
		     g.definir_tamanho_texto(20.0)
		     g.desenhar_texto(145, 200, "Plano 1: Bronze")
		     mostraPlano1()
		     g.renderizar()
			u.aguarde(10000)
}}

	funcao interacaoBotaoPlano2(){
		g.definir_cor(g.criar_cor(100, 100, 100))
		g.desenhar_retangulo(400, 320, 90, 35, verdadeiro, verdadeiro)
		g.definir_cor(g.COR_PRETO)
		g.definir_tamanho_texto(16.0)
		g.desenhar_texto(425, 330, "Plano 2")	
		se(mouse(395, 315, 90, 35) == verdadeiro e m.botao_pressionado(m.BOTAO_ESQUERDO)){
			g.desenhar_retangulo(400, 320, 90, 35, verdadeiro, falso)
			g.definir_cor(g.COR_PRETO)
		     g.definir_tamanho_texto(20.0)
		     g.desenhar_texto(425, 200, "Plano 2: Prata")
			mostraPlano2()
			g.renderizar()
			u.aguarde(10000)
		}}

	funcao interacaoBotaoPlano3(){
		g.definir_cor(g.criar_cor(100, 100, 100))
		g.desenhar_retangulo(400, 320, 90, 35, verdadeiro, verdadeiro)
		g.definir_cor(g.COR_PRETO)
		g.definir_tamanho_texto(16.0)
		g.desenhar_texto(425, 330, "Plano 3")	
		se(mouse(395, 315, 90, 35) == verdadeiro e m.botao_pressionado(m.BOTAO_ESQUERDO)){
			g.desenhar_retangulo(400, 320, 90, 35, verdadeiro, falso)
			g.definir_cor(g.COR_PRETO)
		     g.definir_tamanho_texto(20.0)
		     g.desenhar_texto(425, 200, "Plano 3: Ouro")
			mostraPlano3()
			g.renderizar()
			u.aguarde(10000)
		}}

	funcao interacaoBotaoPlano4(){
		g.definir_cor(g.criar_cor(100, 100, 100))
		g.desenhar_retangulo(400, 320, 90, 35, verdadeiro, verdadeiro)
		g.definir_cor(g.COR_PRETO)
		g.definir_tamanho_texto(16.0)
		g.desenhar_texto(425, 330, "Plano 4")	
		se(mouse(395, 315, 90, 35) == verdadeiro e m.botao_pressionado(m.BOTAO_ESQUERDO)){
			g.desenhar_retangulo(400, 320, 90, 35, verdadeiro, falso)
			g.definir_cor(g.COR_PRETO)
		     g.definir_tamanho_texto(20.0)
		     g.desenhar_texto(425, 200, "Plano 4: Rubi")
			mostraPlano2()
			g.renderizar()
			u.aguarde(10000)
		}}
	
	
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 6968; 
 * @DOBRAMENTO-CODIGO = [66, 76, 95, 152, 169, 177, 184, 198, 208, 213, 223, 233, 243, 253, 267, 276, 291, 306, 322, 338, 354, 370];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */