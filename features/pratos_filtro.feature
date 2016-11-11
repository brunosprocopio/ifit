Feature: Plates filter
  In order to filter the plates
  As a system's user or not
  I want to be able to filter the plates of the nearest restaurants by kitchen and type(mountable and predefined)

  Scenario: Select alemã, árabe, asiática kitchen and mountable plate
    Given the plates table
     | id |   nome   |   descricao   |   cozinha   |   tipo   |  restaurante_id  |
     | 1  |   p1     |      d1       |    1        |    1     |        1         |
     | 2  |   p2     |      d2       |    2        |    0     |        2         |
     | 3  |   p3     |      d3       |    3        |    1     |        3         |
     | 4  |   p4     |      d4       |    4        |    0     |        1         |
     | 5  |   p5     |      d5       |    5        |    1     |        2         |
     | 6  |   p6     |      d6       |    6        |    0     |        3         |
     | 7  |   p7     |      d7       |    7        |    1     |        1         |
     | 8  |   p8     |      d8       |    8        |    0     |        2         |
     | 9  |   p9     |      d9       |    9        |    1     |        3         |
     | 10 |   p10    |      d10      |    10       |    0     |        1         |
     | 11 |   p11    |      d11      |    11       |    1     |        2         |
     | 12 |   p12    |      d12      |    12       |    0     |        3         |
    And I am in the restaurant page
    When I click on the 'Pratos' button
    And I go to the plates page
    And I check the alemã, árabe and asiática (numbers 1,2,3) kitchen
    And I do not check the brasileira, chinesa, francesa, indiana, italiana, japonesa, mexicana, portuguesa, tailandesa (numbers 4,5,6,7,8,9,10,11,12)
    And I check the mountable type
    And I click on the 'Filter' button
    Then I should see plates "1,3"

  Scenario: Select every kitchen and mountable plate
    Given the plates table
      | id |   nome   |   descricao   |   cozinha   |   tipo   |  restaurante_id  |
      | 1  |   p1     |      d1       |    1        |    1     |        1         |
      | 2  |   p2     |      d2       |    2        |    0     |        2         |
      | 3  |   p3     |      d3       |    3        |    1     |        3         |
      | 4  |   p4     |      d4       |    4        |    0     |        1         |
      | 5  |   p5     |      d5       |    5        |    1     |        2         |
      | 6  |   p6     |      d6       |    6        |    0     |        3         |
      | 7  |   p7     |      d7       |    7        |    1     |        1         |
      | 8  |   p8     |      d8       |    8        |    0     |        2         |
      | 9  |   p9     |      d9       |    9        |    1     |        3         |
      | 10 |   p10    |      d10      |    10       |    0     |        1         |
      | 11 |   p11    |      d11      |    11       |    1     |        2         |
      | 12 |   p12    |      d12      |    12       |    0     |        3         |
    And I am in the restaurant page
    When I click on the 'Pratos' button
    And I go to the plates page
    And I check the alemã, árabe, asiática, brasileira, chinesa, francesa, indiana, italiana, japonesa, mexicana, portuguesa, tailandesa (numbers 1,2,3,4,5,6,7,8,9,10,11,12) kitchen
    And I check the mountable type
    And I click on the 'Filter' button
    Then I should see plates "1,3,5,7,9,11"

  Scenario: Select no kitchens and mountable plate
    Given the plates table
      | id |   nome   |   descricao   |   cozinha   |   tipo   |  restaurante_id  |
      | 1  |   p1     |      d1       |    1        |    1     |        1         |
      | 2  |   p2     |      d2       |    2        |    0     |        2         |
      | 3  |   p3     |      d3       |    3        |    1     |        3         |
      | 4  |   p4     |      d4       |    4        |    0     |        1         |
      | 5  |   p5     |      d5       |    5        |    1     |        2         |
      | 6  |   p6     |      d6       |    6        |    0     |        3         |
      | 7  |   p7     |      d7       |    7        |    1     |        1         |
      | 8  |   p8     |      d8       |    8        |    0     |        2         |
      | 9  |   p9     |      d9       |    9        |    1     |        3         |
      | 10 |   p10    |      d10      |    10       |    0     |        1         |
      | 11 |   p11    |      d11      |    11       |    1     |        2         |
      | 12 |   p12    |      d12      |    12       |    0     |        3         |
    And I am in the restaurant page
    When I click on the 'Pratos' button
    And I go to the plates page
    And I check the mountable type
    And I do not check the alemã, árabe, asiática, brasileira, chinesa, francesa, indiana, italiana, japonesa, mexicana, portuguesa, tailandesa (numbers 1,2,3,4,5,6,7,8,9,10,11,12)
    And I click on the 'Filter' button
    Then I should see plates "1,3,5,7,9,11"

  Scenario: Select brasileira, chinesa, francesa and italiana kitchen and predefined plate
    Given the plates table
      | id |   nome   |   descricao   |   cozinha   |   tipo   |  restaurante_id  |
      | 1  |   p1     |      d1       |    1        |    1     |        1         |
      | 2  |   p2     |      d2       |    2        |    0     |        2         |
      | 3  |   p3     |      d3       |    3        |    1     |        3         |
      | 4  |   p4     |      d4       |    4        |    0     |        1         |
      | 5  |   p5     |      d5       |    5        |    1     |        2         |
      | 6  |   p6     |      d6       |    6        |    0     |        3         |
      | 7  |   p7     |      d7       |    7        |    1     |        1         |
      | 8  |   p8     |      d8       |    8        |    0     |        2         |
      | 9  |   p9     |      d9       |    9        |    1     |        3         |
      | 10 |   p10    |      d10      |    10       |    0     |        1         |
      | 11 |   p11    |      d11      |    11       |    1     |        2         |
      | 12 |   p12    |      d12      |    12       |    0     |        3         |
    And I am in the restaurant page
    When I click on the 'Pratos' button
    And I go to the plates page
    And I check the brasileira, chinesa, francesa and italiana (numbers 4,5,6,8) kitchen
    And I do not check the alemã, árabe, asiática, indiana, japonesa, mexicana, portuguesa, tailandesa (numbers 1,2,3,7,9,10,11,12)
    And I check the predefined type
    And I click on the 'Filter' button
    Then I should see plates "4,6,8"

  Scenario: Select every kitchen and mountable plate
    Given the plates table
      | id |   nome   |   descricao   |   cozinha   |   tipo   |  restaurante_id  |
      | 1  |   p1     |      d1       |    1        |    1     |        1         |
      | 2  |   p2     |      d2       |    2        |    0     |        2         |
      | 3  |   p3     |      d3       |    3        |    1     |        3         |
      | 4  |   p4     |      d4       |    4        |    0     |        1         |
      | 5  |   p5     |      d5       |    5        |    1     |        2         |
      | 6  |   p6     |      d6       |    6        |    0     |        3         |
      | 7  |   p7     |      d7       |    7        |    1     |        1         |
      | 8  |   p8     |      d8       |    8        |    0     |        2         |
      | 9  |   p9     |      d9       |    9        |    1     |        3         |
      | 10 |   p10    |      d10      |    10       |    0     |        1         |
      | 11 |   p11    |      d11      |    11       |    1     |        2         |
      | 12 |   p12    |      d12      |    12       |    0     |        3         |
    And I am in the restaurant page
    When I click on the 'Pratos' button
    And I go to the plates page
    And I check the alemã, árabe, asiática, brasileira, chinesa, francesa, indiana, italiana, japonesa, mexicana, portuguesa, tailandesa (numbers 1,2,3,4,5,6,7,8,9,10,11,12) kitchen
    And I check the predefined type
    And I click on the 'Filter' button
    Then I should see plates "2,4,6,8,10,12"

  Scenario: Select no kitchen and mountable plate
    Given the plates table
      | id |   nome   |   descricao   |   cozinha   |   tipo   |  restaurante_id  |
      | 1  |   p1     |      d1       |    1        |    1     |        1         |
      | 2  |   p2     |      d2       |    2        |    0     |        2         |
      | 3  |   p3     |      d3       |    3        |    1     |        3         |
      | 4  |   p4     |      d4       |    4        |    0     |        1         |
      | 5  |   p5     |      d5       |    5        |    1     |        2         |
      | 6  |   p6     |      d6       |    6        |    0     |        3         |
      | 7  |   p7     |      d7       |    7        |    1     |        1         |
      | 8  |   p8     |      d8       |    8        |    0     |        2         |
      | 9  |   p9     |      d9       |    9        |    1     |        3         |
      | 10 |   p10    |      d10      |    10       |    0     |        1         |
      | 11 |   p11    |      d11      |    11       |    1     |        2         |
      | 12 |   p12    |      d12      |    12       |    0     |        3         |
    And I am in the restaurant page
    When I click on the 'Pratos' button
    And I go to the plates page
    And I do not check the alemã, árabe, asiática, brasileira, chinesa, francesa, indiana, italiana, japonesa, mexicana, portuguesa, tailandesa (numbers 1,2,3,4,5,6,7,8,9,10,11,12)
    And I check the predefined type
    And I click on the 'Filter' button
    Then I should see plates "2,4,6,8,10,12"

