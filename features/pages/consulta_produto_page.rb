class ConsultaPage < SitePrism::Page

    element :pesquisa_produto, 'input[name="q"]'
    element :seleciona_produto, 'input[class="ellipsis short-title"]'
    element :botao_pesquisa, 'input[class="search-box"]'
 
 
     def pesquisar(produto)
        pesquisa_produto.set produto
        find(:css, 'input[name="q"]').native.send_keys(:return)
        #find(:xpath, "//*[@id=\"deals-div\"]/div/div[3]/div[1]/figure/a/div[1]/div[1]/img").click
        

     end
 end 