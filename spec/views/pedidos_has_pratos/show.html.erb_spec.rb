require 'rails_helper'

RSpec.describe "pedidos_has_pratos/show", type: :view do
  before(:each) do
    @pedidos_has_prato = assign(:pedidos_has_prato, PedidosHasPrato.create!(
      :pedidos => nil,
      :pratos => nil
    ))
  end

  xit "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
