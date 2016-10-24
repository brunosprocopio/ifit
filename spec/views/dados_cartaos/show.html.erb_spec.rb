require 'rails_helper'

RSpec.describe "dados_cartaos/show", type: :view do
  before(:each) do
    @dados_cartao = assign(:dados_cartao, DadosCartao.create!(
      :nome => "Nome",
      :numero => 2,
      :cod_seguranca_integer => "Cod Seguranca Integer",
      :tipo => 3
    ))
  end

  xit "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Cod Seguranca Integer/)
    expect(rendered).to match(/3/)
  end
end
