            #language: pt

            Funcionalidade: Tela de Cadastro - Checkout
            Como cliente da Ebac-Shop
            Quero concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu estou na tela de cadastro


            Cenario: Permitir cadastro apenas se os campos obrigatorios forem preenchidos
            Quando eu preencher os dados, mas deixar campos obrigatorios em branco
            Entao deve ser exibida a mensagem de erro "Obrigatorio preencher campos marcados com *"

            Cenario:  Não permitir cadastro com e-mail em formato inválido
            Quando eu inserir um e-mail com formato inválido
            E clicar no botao "Login"
            Entao deve ser exibida uma mensagem de erro “E-mail com formato inválido”

            Cenario: Exibir alerta ao tentar cadastrar com campos vazios
            Quando eu tentar cadastrar um usuario sem preencher todos os campos
            E clicar no botao "Login"
            Entao deve ser exibida uma mensagem de alerta “Campo vazio, necessário preenchimento”


            Esquema do Cenario: Validação de campos obrigatórios no cadastro
            Quando eu preencher os campos com os seguintes dados <Nome>, <E-mail> e <Senha> 
            Entao deve ser exibida a <Mensagem> de erro

            | Nome   | E-mail         | Senha     | Mensagem                                      |
            | Marina | marina@123com  | senha@123 | "E-mail com formato inválido"                 |
            | Marina | marina@123.com |           | "Campo vazio, necessário preenchimento"       |
            | Marina |                | senha@123 | "Obrigatorio preencher campos marcados com *" |
