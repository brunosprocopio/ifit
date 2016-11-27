#language: pt

Funcionalidade: Login de usuário
  Para poder buscar me logar no sistema
  Como um usuário do sistema
  Quero poder utilizar meu usuário e senha cadastrados anteriomente

  Contexto:
    * existem os seguintes usuários cadastrados no sistema:
      | nome   | usuario | senha |
      | ana    | ana_20  | 12345 |
      | tobias | tobby   | abcde |

  Cenário: Login com sucesso
  Se o usuário realizar o login com um username e senha cadastrados, é mostrada
  uma mensagem informando que o usuário se logou com sucesso.

    Dado que visitei a página de login
    Quando preencho o campo de login com "ana_20"
    Quando preencho o campo de senha com "12345"
    E clico no botão 'Login'
    Então visualizo na tela a seguinte mensagem:
      """
      Usuário logado com sucesso!
      """

  Cenário: Login com sucesso
  Se o usuário realizar o login com um username e senha cadastrados, é mostrada
  uma mensagem informando que o usuário se logou com sucesso.

    Dado que visitei a página de login
    Quando preencho o campo de login com "tobby"
    Quando preencho o campo de senha com "abcde"
    E clico no botão 'Login'
    Então visualizo na tela a seguinte mensagem:
      """
      Usuário logado com sucesso!
      """

  Cenário: Login sem sucesso
  Se o usuário realizar o login com um username e senha que não foram cadastrados, é mostrada
  uma mensagem informando que o usuário não se logou.

    Dado que visitei a página de login
    Quando preencho o campo de login com "jorge"
    Quando preencho o campo de senha com "12345"
    E clico no botão 'Login'
    Então visualizo na tela a seguinte mensagem:
      """
      invalid_login
      """