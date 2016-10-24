require 'rails_helper'

RSpec.describe "pedidos_has_pratos/edit", type: :view do
  before(:each) do
    @pedidos_has_prato = assign(:pedidos_has_prato, PedidosHasPrato.create!(
      :pedidos => nil,
      :pratos => nil
    ))
  end

  xit "renders the edit pedidos_has_prato form" do
    render

    assert_select "form[action=?][method=?]", pedidos_has_prato_path(@pedidos_has_prato), "post" do

      assert_select "input#pedidos_has_prato_pedidos_id[name=?]", "pedidos_has_prato[pedidos_id]"

      assert_select "input#pedidos_has_prato_pratos_id[name=?]", "pedidos_has_prato[pratos_id]"
    end
  end
end
