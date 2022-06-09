            #language: pt

            Funcionalidade: Tela de Cadastro - Checkout
            Como cliente da EBAC-Shop
            Quero concluir meu cadastro
            E finalizar minhas compras

            Contexto:
            Dado que eu acesse a plataforma EBAC - Shop

            Esquema do Cenário: Cadastro com dados válidos
            Quando eu cadastrar *<usuario> válido
            E *<senha> válida
            E *<email> válido
            Então concluir meu cadastro
            E exibir <mensagem> "finalizar minha compra"

            Exemplos:
            | usuario                  | senha       | email                | mensagem           |
            | "llpupp@ebacshop.com.br" | "llpupp123" | "llpupp@ebac.com.br" | "finalizar compra" |
            | "llpupp@ebacshop.com.br" | "llpupp123" | "llpupp@ebac.com.br" | "finalizar compra" |
            | "llpupp@ebacshop.com.br" | "llpupp123" | "llpupp@ebac.com.br" | "finalizar compra" |
            
            Esquema do Cenário: Cadastro Dados inválidos
            Quando eu digitar meu *<e-mail> com formato inválido
            Ou Quando eu deixar *<usuario>, *<senha> e *<email> vazios
            Então exibir <mensagem> "erro"

            Exemplos:
            | usuario                 | senha | email | mensagem |
            | "llpuppebacshop.com.br" |       |       | "erro"   |






