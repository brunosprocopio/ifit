When(/^I go to the homepage$/) do
  visit root_path
end

Then(/^I should see the Sign_in label$/) do
  #expect(page.find('<h1>')).to eq("Sign_in")
  #expect(page).to have_content("Sign_in")
  expect(page.find('label').text).to eq 'Sign_in'
end

And(/^I should see the Sign_in input$/) do
  #expect(page.find('<h1>')).to eq("Sign_in")
  #expect(page).to have_content("Sign_in")
  expect(page.first('input')[:name]).to eq 'Sign_in'
end


Given (/^I enter my input in the search label$/) do
  visit root_path
  page.fill_in 'Sign_in', with: 'Edson'
  expect(page.find('input[id="Sign_in"]')[:value]).to eq 'Edson'

end

When (/^Click on the Submit Button$/) do
  #puts page.body
  expect(page.find('input[id="Sign"]')[:value]).not_to eq ''
  find('input[name="commit"]').click
end

Then (/^I should be redirected to Cadastro_path/) do
  expect(current_path).to eq cadastro_path
end