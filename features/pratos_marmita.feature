Feature: Mountable Plate
  In order to check the mountable plate page
  As a system user or not
  I want to be able to access the page and see the food's information, price and have the option to buy it

  Scenario: Buy a mountable plate
    Given I visit the plates page and have the plates table
      | id |   nome   |   descricao   |   cozinha            |   tipo          |  restaurante_id  |
      | 1  |   p1     |      d1       |    1  (alemã)        |    1 (marmita)  |        1         |
      | 2  |   p2     |      d2       |    2  (árabe)        |    0 (pronto)   |        2         |
      | 3  |   p3     |      d3       |    3  (asiática)     |    1 (marmita)  |        3         |
      | 4  |   p4     |      d4       |    4  (brasileira)   |    0 (pronto)   |        1         |
      | 5  |   p5     |      d5       |    5  (chinesa)      |    1 (marmita)  |        2         |
      | 6  |   p6     |      d6       |    6  (francesa)     |    0 (pronto)   |        3         |
      | 7  |   p7     |      d7       |    7  (indiana)      |    1 (marmita)  |        1         |
      | 8  |   p8     |      d8       |    8  (italiana)     |    0 (pronto)   |        2         |
      | 9  |   p9     |      d9       |    9  (japonesa)     |    1 (marmita)  |        3         |
      | 10 |   p10    |      d10      |    10 (mediterranea) |    0 (pronto)   |        1         |
      | 11 |   p11    |      d11      |    11 (mexicana)     |    1 (marmita)  |        2         |
      | 12 |   p12    |      d12      |    12 (portuguesa)   |    0 (pronto)   |        3         |

    And the AlimentosPrecos table
    | id | nome        | prato_montado_id | preco_por_grama |
    | 1  | batata-doce |       3          |     0,15         |
    | 2  | frango      |       3          |     0,2         |

    And I click on the plate "5" link
    Then I should be redirected to plate "5" page
    And I should see plate "5" description
    And I should see the textbox of each component of the plate "3" with the price next to it
    And I fill the textboxes "batata-doce" and "frango" with "100" and "200" gramas
    And I click on "Calculate Price"
    And I should see the price "55"
    And I should see the restaurant link "2" that owns the plate
    And I should see the 'Comprar' button