require 'rails_helper'

RSpec.describe "pedidos/edit", type: :view do
  before(:each) do
    @pedido = assign(:pedido, Pedido.create!(
      :preco_total => 1,
      :tipo_pagamento => 1,
      :usuario => nil
    ))
  end

  it "renders the edit pedido form" do
    render

    assert_select "form[action=?][method=?]", pedido_path(@pedido), "post" do

      assert_select "input#pedido_preco_total[name=?]", "pedido[preco_total]"

      assert_select "input#pedido_tipo_pagamento[name=?]", "pedido[tipo_pagamento]"

      assert_select "input#pedido_usuario_id[name=?]", "pedido[usuario_id]"
    end
  end
end
