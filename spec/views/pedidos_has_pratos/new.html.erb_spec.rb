require 'rails_helper'

RSpec.describe "pedidos_has_pratos/new", type: :view do
  before(:each) do
    assign(:pedidos_has_prato, PedidosHasPrato.new(
      :pedidos => nil,
      :pratos => nil
    ))
  end

  it "renders new pedidos_has_prato form" do
    render

    assert_select "form[action=?][method=?]", pedidos_has_pratos_path, "post" do

      assert_select "input#pedidos_has_prato_pedidos_id[name=?]", "pedidos_has_prato[pedidos_id]"

      assert_select "input#pedidos_has_prato_pratos_id[name=?]", "pedidos_has_prato[pratos_id]"
    end
  end
end
