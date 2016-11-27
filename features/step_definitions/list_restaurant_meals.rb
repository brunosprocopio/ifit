Before do
  Restaurante.create id: 90, nome: "Meu restaurante muito legal"
  Prato.create(id: 8001, restaurante_id: 90, nome: "Prato 1")
  Prato.create(id: 9001, restaurante_id: 90, nome: "Prato 2")
end


When(/^I visit a restaurant page, I should see all restaurant meals$/) do
  visit "/restaurantes/90"
  Restaurante.find(90).pratos.each do |meal|
    expect(page).to have_content meal.nome
  end
end
