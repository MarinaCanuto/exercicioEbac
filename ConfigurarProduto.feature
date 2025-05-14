            #language: pt

            Funcionalidade: Configurar produto
            Como cliente da Ebac-Shop
            Quero configurar meu produto
            Para Inseri-lo no carrinho

            Contexto:
            Dado que eu acesso o portal da Ebac-Shop

            Cenario: Seleção obrigatoria de cor, tamanho e quantidade
            Quando eu selecionar um produto
            E adicioná-lo ao carrinho
            Entao deve aparecer a mensagem "Seleção obrigatória de cor, tamanho e quantidade"

            Cenario: Permitir apenas 10 produtos por venda
            Quando eu selecionar um produto
            E tentar exceder o limite de 10 produtos
            Entao deve aparecer a mensagem "Quantidade máxima permitida de 10 produtos"

            Cenario: Excluir itens adicionados
            Quando eu selecionar um produto
            E configurar a quantidade, o tamanho e a cor
            Entao ao clicar no botao "Limpar", a página deve retornar ao seu estado original

            Esquema do Cenário: Validação da seleção de atributos obrigatórios do produto
            Quando eu selecionar o produto com <Cor>, <Tamanho> e <Quantidade>
            E adicioná-lo ao carrinho
            Então deve aparecer a mensagem <Mensagem>

            Exemplos:
            | Cor  | Tamanho | Quantidade | Mensagem                                           |
            |      | M       | 1          | "Seleção obrigatória de cor, tamanho e quantidade" |
            | Azul |         | 1          | "Seleção obrigatória de cor, tamanho e quantidade" |
            | Azul | M       |            | "Seleção obrigatória de cor, tamanho e quantidade" |
            | Azul | M       | 11         | "Quantidade máxima permitida de 10 produtos"       |


