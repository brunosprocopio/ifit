require 'rails_helper'

RSpec.describe "restaurantes/new", type: :view do
  before(:each) do
    assign(:restaurante, Restaurante.new(
      :nome => "MyString",
      :cnpj => "MyString",
      :razao_social => "MyString",
      :usuario => "MyString",
      :senha => "MyString"
    ))
  end

  xit "renders new restaurante form" do
    render

    assert_select "form[action=?][method=?]", restaurantes_path, "post" do

      assert_select "input#restaurante_nome[name=?]", "restaurante[nome]"

      assert_select "input#restaurante_cnpj[name=?]", "restaurante[cnpj]"

      assert_select "input#restaurante_razao_social[name=?]", "restaurante[razao_social]"

      assert_select "input#restaurante_usuario[name=?]", "restaurante[usuario]"

      assert_select "input#restaurante_senha[name=?]", "restaurante[senha]"
    end
  end
end
