Given(/^I visit the plates page and have the plates table$/) do |table|
  visit '/pratos'
end

Given(/^I click on the plate "([^"]*)" link$/) do |arg1|
  expect(page).to have_link("Prato #{arg1}", href: "/pratos/#{arg1}")
  visit("/pratos/#{arg1}")
end

Then(/^I should be redirected to plate "([^"]*)" page$/) do |arg1|
end

Then(/^I should see plate "([^"]*)" description$/) do |arg1|
  @prato = Prato.find(arg1)
  expect(page).to have_content(@prato.descricao)
end

Then(/^I should see the price of the plate "([^"]*)"$/) do |arg1|
  @pratop = PratoPronto.find_by_prato_id(arg1)
  expect(page).to have_content("#{@pratop.preco}")
end


Then(/^I should see the restaurant link "([^"]*)" that owns the plate$/) do |arg1|
  @prato = Prato.find(arg1)
  id = @prato.restaurante_id
  @restaurante = Restaurante.find(id)
  expect(page).to have_link("Restaurante: #{@restaurante.nome}", href: "/restaurantes/#{@prato.id}")
end

Then(/^I should see the 'Comprar' button$/) do
  expect(page).to have_link ('Comprar')
end

