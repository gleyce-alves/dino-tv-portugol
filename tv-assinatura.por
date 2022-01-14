programa 
{
	inclua biblioteca Graficos --> g
	inclua biblioteca Util --> u // define delay de atualização do jogo
	inclua biblioteca Teclado --> t //captura entrada do teclado 
	
	const inteiro largura_janela = 841, altura_janela =600
	
	inteiro bronze = g.carregar_imagem("plano_bronze.jpeg"), prata = g.carregar_imagem("plano_prata.jpeg"), ouro = g.carregar_imagem("plano_ouro.jpeg"), 
	rubi = g.carregar_imagem("plano_rubi.jpeg"), painel_principal = g.carregar_imagem("teste.jpeg"), delay = 120, plano, confirma=0

	logico para_cima = falso, para_baixo=falso
	
	

	funcao montaJanela(){
		g.iniciar_modo_grafico(verdadeiro)
		g.definir_dimensoes_janela(largura_janela, altura_janela)
		g.definir_titulo_janela("Dino TV")
		g.desenhar_imagem(0,0,painel_principal)
		g.renderizar()
	}
	
	
	funcao escolhePlano(){

		escreva("Qual o plano você tem interesse?  \n 1 para o plano Bronze;\n 2 para o plano Prata;\n 3 para o plano Ouro;\n 4 para o plano Rubi.\n Digite: ") 
		leia(plano)
		
		se (plano == 1){
			
			g.iniciar_modo_grafico(verdadeiro)
			g.definir_dimensoes_janela(400,711)
			g.definir_titulo_janela("Plano Bronze")
			confirmaPlano()
				
			enquanto(verdadeiro){
				g.desenhar_imagem(0,0,bronze)
				g.renderizar()
				u.aguarde(delay)
		}}
			
		senao se (plano == 2){
			
			g.iniciar_modo_grafico(verdadeiro)
			g.definir_dimensoes_janela(400,711)
			g.definir_titulo_janela("Plano Prata")
			confirmaPlano()
		
			enquanto(verdadeiro){
				g.desenhar_imagem(0,0,prata)
				g.renderizar()
				u.aguarde(delay)
		}}
			
		senao se (plano == 3){
			
			g.iniciar_modo_grafico(verdadeiro)
			g.definir_dimensoes_janela(400,711)
			g.definir_titulo_janela("Plano Ouro")
			confirmaPlano()
		
			enquanto(verdadeiro){
				g.desenhar_imagem(0,0,ouro)
				g.renderizar()
				u.aguarde(delay)
		}}
			
		senao se (plano == 4){
			
			g.iniciar_modo_grafico(verdadeiro)
			g.definir_dimensoes_janela(400,711)
			g.definir_titulo_janela("Plano Rubi")
			confirmaPlano()
		
			enquanto(verdadeiro){
				g.desenhar_imagem(0,0,rubi)
				g.renderizar()
				u.aguarde(delay)
		}}

		senao{
			escreva("Número inválido! Digite um número válido para voltar ao menu de seleção: ")
			leia(plano)

			escolhePlano()
			confirmaPlano()
			
		}}
		

	funcao confirmaPlano(){
		
		se(confirma == 0){
				escreva("Digite 0 para confirmar seu pedido: ")
				leia(confirma)
				escreva("Parabéns! O plano que você escolehu foi o plano \n ",plano)}
		senao{
			escolhePlano()
		}}


	funcao inicio()
	{
		montaJanela()
		enquanto(verdadeiro){
			escolhePlano()
			confirmaPlano()
			g.renderizar()
		
		
	}
}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1810; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */