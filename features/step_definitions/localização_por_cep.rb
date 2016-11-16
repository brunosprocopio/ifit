When(/^I go to the homepage$/) do
  visit root_path
end

Then(/^I should see the CEP label$/) do
  #expect(page.find('<h1>')).to eq("Cep")
  #expect(page).to have_content("Cep")
  expect(page.find('label').text).to eq 'Cep'
end

And(/^I should see the CEP input$/) do
  #expect(page.find('<h1>')).to eq("Cep")
  #expect(page).to have_content("Cep")
  expect(page.first('input')[:name]).to eq 'cep'
end


Given (/^I enter my CEP in the search label$/) do
  visit root_path
  page.fill_in 'cep', with: '02423030'
  expect(page.find('input[id="cep"]')[:value]).to eq '02423030'

end

When (/^Click on the Submit Button$/) do
  puts page.body
  expect(page.find('input[id="cep"]')[:value]).not_to eq ''
  find('input[name="commit"]').click
end

Then (/^I should be redirected to restaurantes_proximo_path/) do
  #puts "RESTAURANTES PRÓXIMOS <<<<<<<<<<<<<<<<<<<<<<"
  #puts restaurantes_proximos_path
  expect(current_path).to eq create_nearby_restaurants_by_cep_restaurantes_proximos_path
end