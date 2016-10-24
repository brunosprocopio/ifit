require 'rails_helper'

RSpec.describe "endereco_sessaos/new", type: :view do
  before(:each) do
    assign(:endereco_sessao, EnderecoSessao.new(
      :cep => 1,
      :pais => "MyString",
      :estado => "MyString",
      :cidade => "MyString",
      :rua => "MyString",
      :numero => 1,
      :complemento => 1,
      :sessao => nil
    ))
  end

  xit "renders new endereco_sessao form" do
    render

    assert_select "form[action=?][method=?]", endereco_sessaos_path, "post" do

      assert_select "input#endereco_sessao_cep[name=?]", "endereco_sessao[cep]"

      assert_select "input#endereco_sessao_pais[name=?]", "endereco_sessao[pais]"

      assert_select "input#endereco_sessao_estado[name=?]", "endereco_sessao[estado]"

      assert_select "input#endereco_sessao_cidade[name=?]", "endereco_sessao[cidade]"

      assert_select "input#endereco_sessao_rua[name=?]", "endereco_sessao[rua]"

      assert_select "input#endereco_sessao_numero[name=?]", "endereco_sessao[numero]"

      assert_select "input#endereco_sessao_complemento[name=?]", "endereco_sessao[complemento]"

      assert_select "input#endereco_sessao_sessao_id[name=?]", "endereco_sessao[sessao_id]"
    end
  end
end
