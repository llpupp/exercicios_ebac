            #language: pt

            Funcionalidade: Tela de login
            Como cliente da EBAC - Shop
            Quero me autenticar na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a autenticação de clientes na plataforma da EBAC - Shop

            Cenário: Dados válidos
            Quando eu digitar o usuário "llpupp@ebacshop.com.br"
            E a senha "llpupp123"
            Então quero visualizar meus pedidos e deve exibir a mensagem "ir para o checkout"

            Cenário: Dados de usuário inválidos
            Quando eu digitar o usuário "uihji@ebacshop.com.br"
            E a senha "llpupp123"
            Então deve exibir a mensagem de alerta: "usuário ou senha inválidos"

            Cenário: Dados de senha inválidos
            Quando eu digitar o usuário "llpupp@ebacshop.com.br"
            E a senha "uifg90qeur"
            Então deve exibir a mensagem de alerta: "usuário ou senha inválidos"

            Esquema do Cenário: Autenticação de multiplos usuários
            Quando eu digitar o <usuario>
            E a <senha>
            Então o sistema deve exibir meus pedidos e exibir a mensagem "ir para o checkout"

            Exemplos:
            | usuario                  | senha       | mensagem                     |
            | "llpupp@ebacshop.com.br" | "llpupp123" | "ir para o checkout"         |
            | "lvvfvp@ebacshop.com.br" | "llpupp123" | "usuário ou senha inválidos" |
            | "llpupp@ebacshop.com.br" | "u98gfuif"  | "usuário ou senha inválidos" |
            | "llpupp@ebacshop.com.br" | "llpupp123" | "ir para o checkout"         |
            | "llpupp@ebacshop.com.br" | "llpupp123" | "ir para o checkout"         |
