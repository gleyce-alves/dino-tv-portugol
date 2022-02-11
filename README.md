# DINO TV: TV por assinatura utilizando o Portugol

Algoritmo criado com o Portugol e Portugol Studio para a conclusão do Módulo I do programa Novos Talentos: Curso de qualificação socioprofissional em programação em software oferecido pelo Governo de Pernambuco através da Secretaria do Trabalho - SETEQ.      

### Equipe:

Desenvolvedora: Gleyce Alves

### Estruturação:

O código foi pensado e desenvolvido em 3 grandes blocos: Estrutura base, Interface gráfica e interação com o mouse.

#### Bloco 1: Estrutura base

- função mostraHora() : Essa função tem como objetivo mostrar a saudação (Bom dia!, Boa tarde! ou Boa noite! ) relacionando com o horário do sistema operacional em que o programa está funcionando.
- função criaCadastro() : Essa função tem como objetivo criar o cadastro do usuário, ela adiciona a variável "nome" e "idade"; essa segunda variável condiciona se o cliente pode continuar ou não no nosso serviço.
- função escolhePlano() :  Essa função da opção para o usuário escolher qual plano (combo de pacotes) mais lhe interessa e fazer a possível contratação. Obs.: Essa função utilza a função que será listada a seguir.
- função confirmaPlano() : Essa função tem como objetivo confirmar  o plano escolhido pelo usuário, logo após a confirmação o usuário é direcionado para a tela de pagamento. Caso o usuário não confirme, é redirecionado para a tela principal.

#### Bloco 2: Interface gráfica

- função montaJanela() : Tela com a logo da TV Dino.

- função desenhaTelaMenu() : Tela principal do programa, incluso botão clicável **Menu** e **Sair**

- função mostraSair() : Tela de saída do programa (aparece quando o usuário clica no botão **Sair**)

- função mostraMenuPlanos() : Tela direcionada a partir do clique no botão **Menu**.

- função corDundoPadrao() : Define a cor padrão de fundo das telas.

- função mostraPlano1() : Tela que mostra a imagem do Plano Bronze, caso o usuário opte por escolher o plano 1.

- função mostraPlano2() : Tela que mostra a imagem do Plano Prata, caso o usuário opte por escolher o plano 2.

- função mostraPlano3() : Tela que mostra a imagem do Plano Ouro, caso o usuário opte por escolher o plano 3.

- função mostraPlano4() : Tela que mostra a imagem do Plano Rubi, caso o usuário opte por escolher o plano 4.

- função mostraPagamentos() : Tela de pagamento. É redirecionada para o usuário quando o mesmo escolhe e confirma o plano que quer adquirir. 

  ​

#### Bloco 3: Interação com o mouse

- função logico mouse(inteiro x, inteiro y, inteiro a, inteiro b) : Implementa a interação do mouse com a interface gráfica.
- função interacaoBotaoMenuPlanos() : Estabelece a interação do mouse com o ícone clicável **Menu** da tela principal do programa.
- função interacaoBotaoSair() : Estabelece a interação do mouse com o ícone clicável **Sair** da tela principal do programa. 



### Observações adicionais: 

- Foi utilizado o Kanban para criação e estruturação do projeto.
