Before do
  PratoMontado.create :id => 1, :prato_id => 1
  PratoMontado.create :id => 2, :prato_id => 3
  PratoMontado.create :id => 3, :prato_id => 5
  PratoMontado.create :id => 4, :prato_id => 7
  PratoMontado.create :id => 5, :prato_id => 9
  PratoMontado.create :id => 6, :prato_id => 11
  AlimentoPreco.create :id => 1, :nome => 'batata_doce', :preco => 0.15, :prato_montado_id => 3
  AlimentoPreco.create :id => 2, :nome => 'frango', :preco => 0.2, :prato_montado_id => 3
end

Given(/^the AlimentosPrecos table$/) do |table|
end

Then(/^I should see the textbox of each component of the plate "([^"]*)" with the price next to it$/) do |arg1|

end

Then(/^I fill the textboxes "([^"]*)" and "([^"]*)" with "([^"]*)" and "([^"]*)" gramas$/) do |arg1, arg2, arg3, arg4|

end

Then(/^I click on "([^"]*)"$/) do |arg1|

end

Then(/^I should see the price "([^"]*)"$/) do |arg1|
end
