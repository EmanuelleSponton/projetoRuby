class RealizaCompra < SitePrism::Page

    set_url 'https://www.groupon.com.br/sao-paulo-so/global-eletro/kit-10-batons-queen-fosco-matt'
    element :campo_pessoas, 'input[name="q"]'
    element :campo_dia, 'input[class="ellipsis short-title"]'
    element :botao_compre, '#compre'
    element :qtd_cupom, 'input[name="qtd-plus"]'
 
 
     def adicionar_item_carrinho
       botao_compre.click
    end 

     def aumentar_qtd_produto
        find('.qtd-plus', :text => "+").click
    end
end
