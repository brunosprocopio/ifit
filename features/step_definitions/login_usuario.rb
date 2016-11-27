Dado(/^existem os seguintes usuários cadastrados no sistema:$/) do |users|
  users.hashes.each do |user|
    Usuario.create :usuario => user["usuario"], :senha => user["senha"], :id => user["id"]
  end
end

Dado(/^que visitei a página de login/) do
  visit 'user_sessions/new'
end

Quando(/^preencho o campo de login com "([^"]*)"$/) do |login|
  fill_in 'user_session_user', with: login
end

Quando(/^preencho o campo de senha com "([^"]*)"$/) do |password|
  fill_in 'user_session_password', with: password
end

Quando(/^clico no botão 'Login'$/) do
  click_button 'Create User session'
end
