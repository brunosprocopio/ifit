require 'rails_helper'

RSpec.describe "dados_cartaos/index", type: :view do
  before(:each) do
    assign(:dados_cartaos, [
      DadosCartao.create!(
        :nome => "Nome",
        :numero => 2,
        :cod_seguranca_integer => "Cod Seguranca Integer",
        :tipo => 3
      ),
      DadosCartao.create!(
        :nome => "Nome",
        :numero => 2,
        :cod_seguranca_integer => "Cod Seguranca Integer",
        :tipo => 3
      )
    ])
  end

  it "renders a list of dados_cartaos" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Cod Seguranca Integer".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
