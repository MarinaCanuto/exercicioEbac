            #language: pt

            Funcionalidade: Configurar produto
            Como cliente da Ebac-Shop
            Quero fazer o login na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesso a tela de login no portal da Ebac-Shop

            Cenario: Fazer login e ir para o checkout
            Quando eu inserir um usuário e senha válidos
            E clicar em "Login"
            Entao devo ser direcionado para a tela de checkout

            Esquema do Cenario: Usuário ou senha inválidos
            Quando eu inserir <usuário> ou <senha> inválidos
            Entao deve ser exibida uma <mensagem> de erro

            | Usuario               | Senha     | Mensagem                     |
            | marina@ebac.com       | senha@123 | "Usuário ou senha inválidos" |
            | marinajhajah@ebac.com | senha@000 | "Usuário ou senha inválidos" |

