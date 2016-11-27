#language: pt

Funcionalidade: Cadastro de usuário
  Para poder buscar me cadastrar no sistema
  Como um usuário do sistema
  Quero poder criar um usuário e senha

  Cenário: Cadastro com sucesso
    Se o usuário informar dados válidos para o o cadastro, é mostrada uma mensagem
    informando que o usuário foi criado com sucesso.

    Dado que visitei a página de cadastro de usuário
    Quando preencho o campo Nome com "Ana"
    E preencho o campo CPF com "1011121314"
    E preencho o campo Idade "20"
    E preencho o campo Usuario com "Ana_20"
    E preencho o campo Senha com "12345"
    E clico no botão 'Cadastrar'
    Então visualizo na tela a seguinte mensagem:
      """
      Usuário criado com sucesso!
      """