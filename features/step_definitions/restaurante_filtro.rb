Before do

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

