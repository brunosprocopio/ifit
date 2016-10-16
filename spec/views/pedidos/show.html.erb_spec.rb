require 'rails_helper'

RSpec.describe "pedidos/show", type: :view do
  before(:each) do
    @pedido = assign(:pedido, Pedido.create!(
      :preco_total => 2,
      :tipo_pagamento => 3,
      :usuario => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(//)
  end
end
