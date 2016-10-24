require 'rails_helper'

RSpec.describe "alimento_quantidades/edit", type: :view do
  before(:each) do
    @alimento_quantidade = assign(:alimento_quantidade, AlimentoQuantidade.create!(
      :nome => "MyString",
      :quantidade => 1,
      :prato_pronto => nil
    ))
  end

  xit "renders the edit alimento_quantidade form" do
    render

    assert_select "form[action=?][method=?]", alimento_quantidade_path(@alimento_quantidade), "post" do

      assert_select "input#alimento_quantidade_nome[name=?]", "alimento_quantidade[nome]"

      assert_select "input#alimento_quantidade_quantidade[name=?]", "alimento_quantidade[quantidade]"

      assert_select "input#alimento_quantidade_prato_pronto_id[name=?]", "alimento_quantidade[prato_pronto_id]"
    end
  end
end
