            #language: pt

            Funcionalidade: Tela de login
            Como aluno da Faculdade Vincit
            Quero me autenticar
            Para visualizar minhas notas

            Cenário: Autenticação válida
            Dado que eu acesse a pagina de autenticação Faculdade Vincit
            Quando eu digitar o usuario "marco@eduvincit.com.br"
            E a senha "senha@123"
            Então deve exibir uma mensagem de boas vindas "Olá Marco, Seja Bem-Vindo!"

            Cenário: Usuário inexistente
            Dado que eu acesse a pagina de autenticação Faculdade Vincit
            Quando eu digitar o usuario "marco@faculdade.com.br"
            E a senha "senha@123"
            Então deve exibir uma mensagem de alerta "Usuário inexistente"

            Cenário: Usuário com senha inválida
            Quando eu digitar o usuario "marco@eduvincit.com.br"
            E a senha "dfdgtrrtgtr"
            Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"

            Esquema do Cenário: Autenticar multiplos usuários
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve exibir a <mensagem> de sucesso

            Exemplos:
            | usuario                  | senha       | mensagem                    |
            | "marco@eduvincit.com.br" | "teste@123" | "Olá João!Seja Bem-Vindo!"  |
            | "maria@eduvincit.com.br" | "teste@123" | "Olá Maria!Seja Bem-Vindo!" |
            | "jose@eduvincit.com.br"  | "teste@123" | "Olá Jose!Seja Bem-Vindo!"  |