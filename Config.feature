            #language: pt

            Funcionalidade: Tela de Configuração
            Como cliente da Plataforma EBAC - Shop
            Quero configurar meu produto de acordo ao meu tamanho e gosto
            E escolher a quantidade
            Para inserir no carrinho de compras

            Contexto:
            Dado que eu acesse a plataforma EBAC - Shop

            Cenário: Configuração de cor, tamanho e quantidade
            Quando eu escolher a cor e tamanho disponíveis do produto
            E a quantidade de produto para a compra até 10 unidades
            Então deve mostrar mensagem "adicionar o produto no carrinho"

            Cenário: Configuração de quantidade inválida
            Quando eu escolher quantidade > 10 unidades
            Então deve exibir alerta "quantidade excedida"

            Cenário: Retomada da tela original
            Quando eu clicar no botão limpar
            Então deve retomar à tela original com as opções de cor e tamanho do produto

            Esquema do Cenário: Configuração válida
            Quando eu escolher <cor> do produto
            E escolher o <tamanho> dos produtos
            E escolher a <quantidade> do produto até 10 unidades
            Então deve mostrar a <mensagem>


            Exemplos:
            | cor       | tamanho | quantidade | mensagem                          |
            | "verde"   | "P"     | "3"        | "adicionar o produto no carrinho" |
            | "amarelo" | "M"     | "2"        | "adicionar o produto no carrinho" |
            | "azul"    | "P"     | "5"        | "adicionar o produto no carrinho" |
            | "amarelo" | "G"     | "5"        | "adicionar o produto no carrinho" |
            | "amarelo" | "XP"    | "5"        | "adicionar o produto no carrinho" |














