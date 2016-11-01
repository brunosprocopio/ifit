Before do
  Sessao.create :id => 1
  Restaurante.create :id => 1, :nome => "rest1", :usuario => "teste1", :senha => "teste1", :cartao_debito => false, :cartao_credito => false, :dinheiro => true
  Restaurante.create :id => 2, :nome => "rest2", :usuario => "teste2", :senha => "teste2", :cartao_debito => false, :cartao_credito => true, :dinheiro => true
  Restaurante.create :id => 3, :nome => "rest3", :usuario => "teste3", :senha => "teste3", :cartao_debito => true, :cartao_credito => true, :dinheiro => false
  RestaurantesProximo.create :id => 1, :sessao_id => 1, :restaurante_id => 1
  RestaurantesProximo.create :id => 2, :sessao_id => 1, :restaurante_id => 2
  RestaurantesProximo.create :id => 3, :sessao_id => 1, :restaurante_id => 3
end

Given(/^I visit the restaurant page$/) do
  visit '/restaurantes_proximos'
end

When(/^I check the "([^"]*)" checkbox$/) do |arg1|
  page.check("#{arg1}")
end

When(/^I do not check the "([^"]*)" checkbox$/) do |arg1|
  page.uncheck("#{arg1}")
end

When(/^I click on the 'Filter' button$/) do
  click_button 'Filter'
end

Then(/^I should see restaurants "([^"]*)"$/) do |arg1|
   arg1.split(',').each do |entry|
    expect(page).to have_link("restaurantes_proximos/show/#{entry}")
  end
end

