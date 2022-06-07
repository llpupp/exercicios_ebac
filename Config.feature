            #language: pt

            Funcionalidade: Tela de Configuração
            Como cliente da Plataforma EBAC - Shop
            Quero configurar meu produto de acordo ao meu tamanho e gosto
            E escolher a quantidade
            Para inserir no carrinho de compras

            Contexto:
            Dado que eu acesse a plataforma EBAC - Shop e escolha o produto

            Cenário: Selecão de cor, tamanho e quantidade
            Quando eu escolher a cor "amarela" do produto
            E o tamanho "M" do produto
            E a quantidade "3" de produto para a compra
            Então deve mostrar mensagem "adicionar produto no carrinho"

            Cenário: Seleçao de cor e tamanhos inválidos
            Quando eu escolher cor e/ou tamanho inválidos
            Então exibir alerta " produto indisponível"

            Cenário: Quantidade máxima por venda
            Quando eu escolher a "quantidade" do produto até no máximo 10 unidades (ou <=10)
            E ter escolhido a "cor" e "tamanho"
            Então deve mostrar mensagem "adicionar o produto no carrinho"

            Cenário: Quantidade inválida
            Quando eu escolher quantidade > 10 unidades
            Então deve exibir alerta "quantidade excedida"

            Cenário: Retomada da tela original
            Quando eu clicar no botão limpar
            Então deve retomar à tela original com as opções de cor e tamanho do produto

            Esquema do Cenário: Autenticar múltiplas escolhas
            Quando eu escolher <cor> do produto
            E escolher o <tamanho> dos produtos
            E escolher a <quantidade> do produto
            Então deve mostrar a <mensagem> adicionar produto no carrinho


            Exemplos:
            | cor       | tamanho | quantidade | mensagem                          |
            | "amarelo" | "M"     | "3"        | "adicionar o produto no carrinho" |
            | "amarelo" | "M"     | "2"        | "adicionar o produto no carrinho" |
            | "azul"    | "P"     | "5"        | "adicionar o produto no carrinho" |
            | "amarelo" | "G"     | "5"        | "adicionar o produto no carrinho" |
            | "amarelo" | "M"     | "5"        | "adicionar o produto no carrinho" |














