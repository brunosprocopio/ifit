require 'rails_helper'

RSpec.describe "alimento_precos/new", type: :view do
  before(:each) do
    assign(:alimento_preco, AlimentoPreco.new(
      :nome => "MyString",
      :preco => 1,
      :prato_montado => nil
    ))
  end

  xit "renders new alimento_preco form" do
    render

    assert_select "form[action=?][method=?]", alimento_precos_path, "post" do

      assert_select "input#alimento_preco_nome[name=?]", "alimento_preco[nome]"

      assert_select "input#alimento_preco_preco[name=?]", "alimento_preco[preco]"

      assert_select "input#alimento_preco_prato_montado_id[name=?]", "alimento_preco[prato_montado_id]"
    end
  end
end
