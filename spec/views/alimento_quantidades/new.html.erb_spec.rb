require 'rails_helper'

RSpec.describe "alimento_quantidades/new", type: :view do
  before(:each) do
    assign(:alimento_quantidade, AlimentoQuantidade.new(
      :nome => "MyString",
      :quantidade => 1,
      :prato_pronto => nil
    ))
  end

  xit "renders new alimento_quantidade form" do
    render

    assert_select "form[action=?][method=?]", alimento_quantidades_path, "post" do

      assert_select "input#alimento_quantidade_nome[name=?]", "alimento_quantidade[nome]"

      assert_select "input#alimento_quantidade_quantidade[name=?]", "alimento_quantidade[quantidade]"

      assert_select "input#alimento_quantidade_prato_pronto_id[name=?]", "alimento_quantidade[prato_pronto_id]"
    end
  end
end
