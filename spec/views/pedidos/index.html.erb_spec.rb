require 'rails_helper'

RSpec.describe "pedidos/index", type: :view do
  before(:each) do
    assign(:pedidos, [
      Pedido.create!(
        :preco_total => 2,
        :tipo_pagamento => 3,
        :usuario => nil
      ),
      Pedido.create!(
        :preco_total => 2,
        :tipo_pagamento => 3,
        :usuario => nil
      )
    ])
  end

  it "renders a list of pedidos" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
