Dado(/^que visitei a página de cadastro de usuário$/) do
  visit 'usuarios/new'
end

Quando(/^preencho o campo Nome com "([^"]*)"$/) do |nome|
  fill_in 'usuario_nome', with: nome
end

Quando(/^preencho o campo CPF com "([^"]*)"$/) do |cpf|
  fill_in 'usuario_cpf', with: cpf
end

Quando(/^preencho o campo Idade "([^"]*)"$/) do |idade|
  fill_in 'usuario_idade', with: idade
end

Quando(/^preencho o campo Usuario com "([^"]*)"$/) do |usuario|
  fill_in 'usuario_usuario', with: usuario
end

Quando(/^preencho o campo Senha com "([^"]*)"$/) do |senha|
  fill_in 'usuario_senha', with: senha
end

Quando(/^clico no botão 'Cadastrar'$/) do
  click_button 'Create Usuario'
end
