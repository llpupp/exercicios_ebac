#language: pt

Funcionalidade: Tela de Cadastro - Checkout
Como cliente da EBAC-Shop
Quero concluir meu cadastro
E finalizar minhas compras

Dado que eu acesse o cadastramento de usuário na plataforma EBAC - Shop

Cenário: Cadastro com dados válidos
Quando eu cadastrar "usuário*" com dado válido
E "senha" válida de acordo às exigências de caracteres
E "email" como sendo um endereço válido
Então concluir meu cadastro
E exibir mensagem "finalizar minha compra"

Cenário: Cadastro com dados inválidos
Quando eu digitar meu e-mail com formato inválido
Então exibir mensagem "erro"

Cenário:
Quando eu deixar campos vazios no sistema de cadastro
Então exibir um alerta "favor preencher dados válidos nos campos"