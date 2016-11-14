Before do
  Sessao.create :id => 1
  Restaurante.create :id => 1, :nome => "rest1", :usuario => "teste1", :senha => "teste1", :cartao_debito => false, :cartao_credito => false, :dinheiro => true
  Restaurante.create :id => 2, :nome => "rest2", :usuario => "teste2", :senha => "teste2", :cartao_debito => false, :cartao_credito => true, :dinheiro => true
  Restaurante.create :id => 3, :nome => "rest3", :usuario => "teste3", :senha => "teste3", :cartao_debito => true, :cartao_credito => true, :dinheiro => false
  RestaurantesProximo.create :id => 1, :sessao_id => 1, :restaurante_id => 1
  RestaurantesProximo.create :id => 2, :sessao_id => 1, :restaurante_id => 2
  RestaurantesProximo.create :id => 3, :sessao_id => 1, :restaurante_id => 3
  Prato.create :id => 1, :nome => "p1", :descricao => "d1" ,:alema => 1, :arabe => 0, :asiatica => 0, :brasileira => 0, :chinesa => 0, :francesa => 0, :indiana => 0, :italiana => 0, :japonesa => 0, :mediterraneo => 0, :mexicana => 0, :portuguesa => 0, :tailandesa => 0, :tipo => 1, :restaurante_id => 1
  Prato.create :id => 2, :nome => "p2", :descricao => "d2", :alema => 0, :arabe => 1, :asiatica => 0, :brasileira => 0, :chinesa => 0, :francesa => 0, :indiana => 0, :italiana => 0, :japonesa => 0, :mediterraneo => 0, :mexicana => 0, :portuguesa => 0, :tailandesa => 0, :tipo => 0, :restaurante_id => 2
  Prato.create :id => 3, :nome => "p3", :descricao => "d3", :alema => 0, :arabe => 0, :asiatica => 1, :brasileira => 0, :chinesa => 0, :francesa => 0, :indiana => 0, :italiana => 0, :japonesa => 0, :mediterraneo => 0, :mexicana => 0, :portuguesa => 0, :tailandesa => 0, :tipo => 1, :restaurante_id => 3
  Prato.create :id => 4, :nome => "p4", :descricao => "d4", :alema => 0, :arabe => 0, :asiatica => 0, :brasileira => 1, :chinesa => 0, :francesa => 0, :indiana => 0, :italiana => 0, :japonesa => 0, :mediterraneo => 0, :mexicana => 0, :portuguesa => 0, :tailandesa => 0, :tipo => 0, :restaurante_id => 1
  Prato.create :id => 5, :nome => "p5", :descricao => "d5", :alema => 0, :arabe => 0, :asiatica => 0, :brasileira => 0, :chinesa => 1, :francesa => 0, :indiana => 0, :italiana => 0, :japonesa => 0, :mediterraneo => 0, :mexicana => 0, :portuguesa => 0, :tailandesa => 0, :tipo => 1, :restaurante_id => 2
  Prato.create :id => 6, :nome => "p6", :descricao => "d6", :alema => 0, :arabe => 0, :asiatica => 0, :brasileira => 0, :chinesa => 0, :francesa => 1, :indiana => 0, :italiana => 0, :japonesa => 0, :mediterraneo => 0, :mexicana => 0, :portuguesa => 0, :tailandesa => 0, :tipo => 0, :restaurante_id => 3
  Prato.create :id => 7, :nome => "p7", :descricao => "d7", :alema => 0, :arabe => 0, :asiatica => 0, :brasileira => 0, :chinesa => 0, :francesa => 0, :indiana => 1, :italiana => 0, :japonesa => 0, :mediterraneo => 0, :mexicana => 0, :portuguesa => 0, :tailandesa => 0, :tipo => 1, :restaurante_id => 1
  Prato.create :id => 8, :nome => "p8", :descricao => "d8", :alema => 0, :arabe => 0, :asiatica => 0, :brasileira => 0, :chinesa => 0, :francesa => 0, :indiana => 0, :italiana => 1, :japonesa => 0, :mediterraneo => 0, :mexicana => 0, :portuguesa => 0, :tailandesa => 0, :tipo => 0, :restaurante_id => 2
  Prato.create :id => 9, :nome => "p9", :descricao => "d9", :alema => 0, :arabe => 0, :asiatica => 0, :brasileira => 0, :chinesa => 0, :francesa => 0, :indiana => 0, :italiana => 0, :japonesa => 1, :mediterraneo => 0, :mexicana => 0, :portuguesa => 0, :tailandesa => 0, :tipo => 1, :restaurante_id => 3
  Prato.create :id => 10, :nome => "p10", :descricao => "d10", :alema => 0, :arabe => 0, :asiatica => 0, :brasileira => 0, :chinesa => 0, :francesa => 0, :indiana => 0, :italiana => 0, :japonesa => 0, :mediterraneo => 1, :mexicana => 0, :portuguesa => 0, :tailandesa => 0, :tipo => 0, :restaurante_id => 1
  Prato.create :id => 11, :nome => "p11", :descricao => "d11", :alema => 0, :arabe => 0, :asiatica => 0, :brasileira => 0, :chinesa => 0, :francesa => 0, :indiana => 0, :italiana => 0, :japonesa => 0, :mediterraneo => 0, :mexicana => 1, :portuguesa => 0, :tailandesa => 0, :tipo => 1, :restaurante_id => 2
  Prato.create :id => 12, :nome => "p12", :descricao => "d12", :alema => 0, :arabe => 0, :asiatica => 0, :brasileira => 0, :chinesa => 0, :francesa => 0, :indiana => 0, :italiana => 0, :japonesa => 0, :mediterraneo => 0, :mexicana => 0, :portuguesa => 1, :tailandesa => 0, :tipo => 0, :restaurante_id => 3
end

Given(/^the plates table$/) do |table|
end

Given(/^I am in the restaurant page$/) do
  visit '/restaurantes_proximos'
end

When(/^I click on the 'Pratos' button$/) do
  expect(page).to have_link("Pratos")
end

When(/^I go to the plates page$/) do
  visit '/pratos'
end

When(/^I check the alemã, árabe and asiática \(numbers (\d+),(\d+),(\d+)\) kitchen$/) do |arg1, arg2, arg3|
  page.check('alema')
  page.check('arabe')
  page.check('asiatica')
end

When(/^I do not check the brasileira, chinesa, francesa, indiana, italiana, japonesa, mexicana, portuguesa, mediterranea, tailandesa \(numbers (\d+),(\d+),(\d+),(\d+),(\d+),(\d+),(\d+),(\d+),(\d+)\)$/) do |arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9|
  page.uncheck('brasileira')
  page.uncheck('chinesa')
  page.uncheck('francesa')
  page.uncheck('indiana')
  page.uncheck('italiana')
  page.uncheck('japonesa')
  page.uncheck('mexicana')
  page.uncheck('mediterraneo')
  page.uncheck('portuguesa')
  page.uncheck('tailandesa')
end

When(/^I check the mountable type$/) do
  page.check('prato_ndefinido')
end

When(/^I click on the 'Filtrar' button$/) do
  click_button 'Filtrar'
end

Then(/^I should see plates "([^"]*)"$/) do |arg1|
  arg1.split(',').each do |entry|
    expect(page).to have_link("pratos/show/#{entry}")
  end
end

When(/^I check the alemã, árabe, asiática, brasileira, chinesa, francesa, indiana, italiana, japonesa, mexicana, mediterranea, portuguesa, tailandesa \(numbers (\d+),(\d+),(\d+),(\d+),(\d+),(\d+),(\d+),(\d+),(\d+),(\d+),(\d+),(\d+)\) kitchen$/) do |arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12|
  page.check('alema')
  page.check('arabe')
  page.check('asiatica')
  page.check('brasileira')
  page.check('chinesa')
  page.check('francesa')
  page.check('indiana')
  page.check('italiana')
  page.check('japonesa')
  page.check('mexicana')
  page.check('mediterraneo')
  page.check('portuguesa')
  page.check('tailandesa')
end

When(/^I do not check the alemã, árabe, asiática, brasileira, chinesa, francesa, indiana, italiana, japonesa, mexicana, mediterranea, portuguesa, tailandesa \(numbers (\d+),(\d+),(\d+),(\d+),(\d+),(\d+),(\d+),(\d+),(\d+),(\d+),(\d+),(\d+)\)$/) do |arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12|
  page.uncheck('alema')
  page.uncheck('arabe')
  page.uncheck('asiatica')
  page.uncheck('brasileira')
  page.uncheck('chinesa')
  page.uncheck('francesa')
  page.uncheck('indiana')
  page.uncheck('italiana')
  page.uncheck('japonesa')
  page.uncheck('mexicana')
  page.uncheck('mediterraneo')
  page.uncheck('portuguesa')
  page.uncheck('tailandesa')
end



When(/^I check the brasileira, chinesa, francesa and italiana \(numbers (\d+),(\d+),(\d+),(\d+)\) kitchen$/) do |arg1, arg2, arg3, arg4|
  page.check('brasileira')
  page.check('chinesa')
  page.check('francesa')
  page.check('italiana')
end


When(/^I do not check the alemã, árabe, asiática, indiana, japonesa, mexicana, portuguesa, tailandesa \(numbers (\d+),(\d+),(\d+),(\d+),(\d+),(\d+),(\d+),(\d+)\)$/) do |arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8|
  page.uncheck('alema')
  page.uncheck('arabe')
  page.uncheck('asiatica')
  page.uncheck('indiana')
  page.uncheck('japonesa')
  page.uncheck('mexicana')
  page.uncheck('portuguesa')
  page.uncheck('tailandesa')
end

When(/^I check the predefined type$/) do
  page.check('prato_definido')
end
