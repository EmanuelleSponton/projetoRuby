Dado("que eu faco login") do
  @home = HomePage.new
  @home.load
  @home.logar
end

Quando("eu pesquiso um produto") do |table|
  @pesquisa_produto = table.rows_hash['produto']
  @ConsultaPage = ConsultaPage.new
  @ConsultaPage.pesquisar('batom')
end

Quando("seleciono o produto") do
  find(:xpath, "//*[@id=\"deals-div\"]/div/div[3]/div[1]/figure/a/div[1]/div[1]/img").click
end

Entao("eu serei direcionado para a pagina de compra") do
  expect(page).to have_current_path('https://www.groupon.com.br/sao-paulo-so/global-eletro/kit-10-batons-queen-fosco-matt', url: true)
end

Quando("eu clicar em Compre") do
  @compra = RealizaCompra.new
  @compra.load
  @compra.adicionar_item_carrinho
end

Entao("eu serei redirecionado para a pagina de forma de pagamento") do
  expect(page).to have_current_path('https://carrinho.groupon.com.br/v2/comprando', url: true)
end

Quando("eu inserir mais um produto na minha compra") do
  @compra.aumentar_qtd_produto
end

Entao("eu deverei possuir dois produtos no meu carrinho") do
  qtd = find('input[name="qtd-cupom"]').value
  expect(qtd).to eql '2'
end

Quando("eu possuo um produto no meu carrinho") do |table|
  @pesquisa_produto = table.rows_hash['produto']
  @ConsultaPage = ConsultaPage.new
  @ConsultaPage.pesquisar('batom')

  @compra = RealizaCompra.new
  @compra.load
  @compra.adicionar_item_carrinho
end

Quando("seleciono a opcao de pagamento Cartao de Credito") do
  find("input[value='VISA']").click
end

Entao("eu devo conseguir preencher os dados do cartao de credito") do
  @forma_pgto = FormaPagamento.new
  @forma_pgto.load
  @forma_pgto.selecionar_forma_pgto_credito
end

Quando("eu removo o item do carrinho") do
  find(:css, 'a[title="Remover"]').click
  find(:css, 'a[class="modalConfirmRemoveCart-remove"]').click
end

Entao("eu devo ver a seguinte mensagem {string}") do |mensagem|
  expect(page).to have_content mensagem
end 