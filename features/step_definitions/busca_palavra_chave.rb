Dado(/^foram encontrados os seguintes restaurantes próximos ao cliente:$/) do |restaurantes|
  Sessao.create :id => 2

  restaurantes.hashes.each do |restaurante|
    Restaurante.create :id => restaurante["id"], :nome => restaurante["nome do restaurante"]
    RestaurantesProximo.create :id => restaurante["id"], :sessao_id => 2, :restaurante_id => restaurante["id"]
  end
end

Dado(/^foram encontrados os seguintes pratos:$/) do |pratos|
  pratos.hashes.each do |prato|
    Prato.create :id => prato["id"], :nome => prato["nome do prato"], :restaurante_id => prato["restaurante"]

    prato["palavras-chave"].split(",").each do |palavra_chave|
      Tag.create :nome => palavra_chave.strip, :prato_id => prato["id"]
    end
  end
end

Dado(/^que visitei a página de restaurantes próximos$/) do
  visit '/restaurantes_proximos'
end

Quando(/^preencho o campo de busca com "([^"]*)"$/) do |busca|
  fill_in 'search', with: busca
end

Quando(/^clico no botão 'Pesquisar'$/) do
  click_button 'Pesquisar'
end

Então(/^visualizo o estabelecimento "([^"]*)"$/) do |restaurante_id|
  expect(page).to have_link("Restaurante #{restaurante_id}" ,"/restaurantes_proximos/#{restaurante_id}")
end

Então(/^visualizo o prato "([^"]*)"$/) do |prato_id|
  expect(page).to have_link("Prato #{prato_id}", "/pratos/#{prato_id}")
end

Então(/^visualizo na tela a seguinte mensagem:$/) do |message|
  expect(page).to have_content message
end