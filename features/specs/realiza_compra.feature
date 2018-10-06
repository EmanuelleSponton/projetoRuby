#language:pt
Funcionalidade: Realizar Compra
Eu como usuario quero realizar uma compra

    @1
    Cenario: Deve Pesquisar e Selecionar um Produto

        Dado que eu faco login
        Quando eu pesquiso um produto 
        |produto|batom|
        E seleciono o produto 
        Entao eu serei direcionado para a pagina de compra

    @2
    Cenario: Deve Ir Para a Pagina de Forma de Pagamento

        Dado que eu faco login
        E eu pesquiso um produto
        |produto|batom|
        Quando eu clicar em Compre 
        Entao eu serei redirecionado para a pagina de forma de pagamento

    @3
    Cenario: Deve Aumentar a Quantidade do Produto no Carrinho

        Dado que eu faco login
        E eu possuo um produto no meu carrinho
        |produto|batom|
        Quando eu inserir mais um produto na minha compra
        Entao eu deverei possuir dois produtos no meu carrinho

    @4
    Cenario: Deve Preencher os Dados do Pagamento

        Dado que eu faco login
        Quando eu possuo um produto no meu carrinho
        |produto|batom|
        E seleciono a opcao de pagamento Cartao de Credito
        Entao eu devo conseguir preencher os dados do cartao de credito

    @5
    Cenario: Deve Remover o Item do Carrinho

        Dado que eu faco login
        E eu possuo um produto no meu carrinho
        |produto|batom|
        Quando eu removo o item do carrinho
        Então eu devo ver a seguinte mensagem 'Seu carrinho está vazio :('
