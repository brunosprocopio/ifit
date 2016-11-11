#language: pt

Funcionalidade: Busca por palavras-chave
  Para poder buscar os restaurantes e pratos desejados
  Como um usuário do sistema
  Quero poder utilizar como parâmetro de busca palavras-chave relacionadas ao estabelecimento e seus pratos

  Contexto:
    * foram encontrados os seguintes restaurantes próximos ao cliente:
      | id | nome do restaurante |
      | 4  | Pizzaria do Monstro |
      | 5  | Saladas da Maria    |
      | 6  | Marmita Mutante     |
    * foram encontrados os seguintes pratos:
      | id | restaurante | nome do prato        | palavras-chave                         |
      | 1  | 4           | Pizza de Batata-Doce | carboidrato, batata-doce, pizza        |
      | 2  | 4           | Pizza de Frango      | carboidrato, proteína, frango, pizza   |
      | 3  | 5           | Salada Arnold        | salada, alface, frango                 |
      | 4  | 6           | Marmita de Carne     | marmita, proteína, carne, carboidrato  |
      | 5  | 6           | Marmita de Frango    | marmita, proteína, frango, carboidrato |

  Cenário: Busca de restaurante com sucesso
  Se o cliente realizar uma busca por uma palavra-chave e essa palavra existir na base,
  os restaurantes encontrados são exibidos na tela.

    Dado que visitei a página de restaurantes próximos
    Quando preencho o campo de busca com "pizza"
    E clico no botão 'Pesquisar'
    Então visualizo o estabelecimento "4"

  Cenário: Busca de prato com sucesso
  Se o cliente realizar uma busca por uma palavra-chave e essa palavra existir na base,
  os pratos encontrados são exibidos na tela.

    Dado que visitei a página de restaurantes próximos
    Quando preencho o campo de busca com "salada"
    E clico no botão 'Pesquisar'
    Então visualizo o prato "3"

  Cenário: Busca sem sucesso
  Se o cliente realizar uma busca por uma palavra-chave que não existe na base, é exibida
  uma mensagem informando o erro na busca.

    Dado que visitei a página de restaurantes próximos
    Quando preencho o campo de busca com "brigadeiro"
    E clico no botão 'Pesquisar'
    Então visualizo na tela a seguinte mensagem:
      """
      Não foram encontrados resultados com os critérios de busca. Por favor, tente novamente
      com outros critérios.
      """

