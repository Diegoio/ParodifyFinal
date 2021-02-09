#language: pt

Funcionalidade: Login
    Sendo um usuário previamente cadastrado
    Quero acessar o sistema com meu email e senha
    Para que eu possa ter acesso as playlists do Parodify

    Cenario: Login do usuário

        Dado que acesso a página login
        Quando submeto minhas credenciais com: "diego@bol.com" e "pwd123"
        Então devo ser redirecionado para a área logada

    Esquema do Cenário: Tentativa de login

        Dado que acesso a página login
        Quando submeto minhas credenciais com: "<email>" e "<senha>"
        Então devo ver a mensagem de erro: "<mensagem_saida>"

        Exemplos:
            |email             | senha  |
            |diego@404.com.br  | abc123 |
            |                  |        |
            |diego@yahoo.com   |        |
            |diego@404.com.br  |        |


