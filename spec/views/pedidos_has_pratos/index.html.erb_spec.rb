require 'rails_helper'

RSpec.describe "pedidos_has_pratos/index", type: :view do
  before(:each) do
    assign(:pedidos_has_pratos, [
      PedidosHasPrato.create!(
        :pedidos => nil,
        :pratos => nil
      ),
      PedidosHasPrato.create!(
        :pedidos => nil,
        :pratos => nil
      )
    ])
  end

  it "renders a list of pedidos_has_pratos" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
