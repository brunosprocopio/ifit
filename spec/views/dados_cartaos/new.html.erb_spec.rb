require 'rails_helper'

RSpec.describe "dados_cartaos/new", type: :view do
  before(:each) do
    assign(:dados_cartao, DadosCartao.new(
      :nome => "MyString",
      :numero => 1,
      :cod_seguranca_integer => "MyString",
      :tipo => 1
    ))
  end

  xit "renders new dados_cartao form" do
    render

    assert_select "form[action=?][method=?]", dados_cartaos_path, "post" do

      assert_select "input#dados_cartao_nome[name=?]", "dados_cartao[nome]"

      assert_select "input#dados_cartao_numero[name=?]", "dados_cartao[numero]"

      assert_select "input#dados_cartao_cod_seguranca_integer[name=?]", "dados_cartao[cod_seguranca_integer]"

      assert_select "input#dados_cartao_tipo[name=?]", "dados_cartao[tipo]"
    end
  end
end
