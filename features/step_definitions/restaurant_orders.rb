Before do
  Restaurante.create(id: 8002)
  EnderecoRestaurante.create(id: 8001, restaurante_id: 8002)
  Pedido.create(id: 8001, endereco_restaurante_id: 8001)
  Pedido.create(id: 8002, endereco_restaurante_id: 8001)
  Pedido.create(id: 8003, endereco_restaurante_id: 8001)
  Pedido.create(id: 8004, endereco_restaurante_id: 8001)
end

When(/^in restaurant orders page I should see the orders$/) do
  visit "restaurantes/8002/pedidos"
  Restaurante.find(8002).endereco_restaurante.pedido.each do |pedido|
    expect(page).to have_link(pedido.id, "pedido/#{pedido.id}")
  end
end
