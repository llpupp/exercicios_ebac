            #language: pt

            Funcionalidade: Tela de login
            Como cliente da EBAC - Shop
            Quero me autenticar na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a plataforma da EBAC - Shop

            Cenário: Dados válidos
            Quando eu digitar o usuário "llpupp@ebacshop.com.br"
            E a senha "llpupp123"
            Então quero visualizar meus pedidos e deve exibir a mensagem "ir para o checkout"

            Cenário: Dados de usuário ou senha inválidos
            Quando eu digitar o usuário "llpupp@ebacshop.com.br"
            E a senha "uifg90qeur"
            Ou eu digitar usuário "jchioa@ebacshop.com.br"
            E senha "llpupp123"
            Então deve exibir a mensagem de alerta: "usuário ou senha inválidos"

            Esquema do Cenário: Autenticações válidas
            Quando eu digitar o <usuario>
            E a <senha>
            Então o sistema deve exibir meus pedidos e a <mensagem>

            Exemplos:
            | usuario                  | senha       | mensagem             |
            | "llpupp@ebacshop.com.br" | "llpupp123" | "ir para o checkout" |
            | "maria@ebacshop.com.br"  | "maria123"  | "ir para o checkout" |
            | "joao@ebacshop.com.br"   | "joao123"   | "ir para o checkout" |
            | "carlos@ebacshop.com.br" | "ca@123"    | "ir para o checkout" |
            | "jose@ebacshop.com.br"   | "joli321"   | "ir para o checkout" |
