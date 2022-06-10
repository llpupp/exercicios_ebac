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
            E exibir <mensagem>

            Exemplos:
            | usuario                  | senha     | email                 | mensagem           |
            | "JorgeCabral"            | "jac0709" | "joca@ebac.com.br"    | "finalizar compra" |
            | "AntoninhoBerb"          | "ATB123"  | "antberb@ebac.com.br" | "finalizar compra" |
            | "babalu@ebacshop.com.br" | "baba123" | "llpupp@ebac.com.br"  | "finalizar compra" |

            Esquema do Cenário: Cadastro Dados inválidos
            Quando eu digitar meu *<e-mail> com formato inválido
            Ou Quando eu deixar *<usuario>, *<senha> e *<email> vazios
            Então exibir <mensagem>

            Exemplos:
            | usuario  | senha | email | mensagem |
            | "llpupp" |       |       | "erro"   |
            | "RePupp" |       |       | "erro"   |






