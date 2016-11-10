#language: pt

Funcionalidade: Busca de restaurantes por palavras-chave
  Para poder buscar os restaurantes desejados
  Como um usuário do sistema
  Quero poder utilizar como parâmetro de busca palavras-chave relacionadas ao estabelecimento

  Contexto:
    * foram encontrados os seguintes restaurantes próximos ao cliente:
      | id | nome do restaurante |
      | 1  | Pizzaria do Monstro |
      | 2  | Saladas da Maria    |
      | 3  | Marmita Mutante     |
    * e foram encontrados os seguintes pratos:
      | id | restaurante | nome do prato        | palavras-chave                         |
      | 1  | 1           | Pizza de Batata-Doce | carboidrato, batata-doce, pizza        |
      | 2  | 1           | Pizza de Frango      | carboidrato, proteína, frango, pizza   |
      | 3  | 2           | Salada Arnold        | salada, alface, frango                 |
      | 4  | 3           | Marmita de Carne     | marmita, proteína, carne, carboidrato  |
      | 5  | 3           | Marmita de Frango    | marmita, proteína, frango, carboidrato |

  Cenário: Busca de restaurante com sucesso
  Se o cliente realizar uma busca por uma palavra-chave e essa palavra existir na base,
  os restaurantes encontrados são exibidos na tela.

    Dado que visitei a página de restaurantes próximos
    Quando preencho o campo de busca com "pizza"
    E clico no botão 'Pesquisar'
    Então visualizo o estabelecimento "Pizzaria do Monstro"


  Cenário: Busca de restaurante sem sucesso
  Se o cliente realizar uma busca por uma palavra-chave que não existe na base, é exibida
  uma mensagem informando o erro na busca.

    Dado que visitei a página de restaurantes próximos
    Quando preencho o campo de busca com "brigadeiro"
    E clico no botão 'Pesquisar'
    Então visualizo na tela a seguinte mensagem:
      """
      Não foram encontrados restaurantes com os critérios de busca. Por favor, tente novamente
      com outros critérios.
      """