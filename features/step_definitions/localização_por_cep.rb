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
  page.find('input[id="cep"]')[:value].should_not eq " "
  find('input[name="commit"]').click
end
