require 'rails_helper'

RSpec.describe "restaurantes/edit", type: :view do
  before(:each) do
    @restaurante = assign(:restaurante, Restaurante.create!(
      :nome => "MyString",
      :cnpj => "MyString",
      :razao_social => "MyString",
      :usuario => "MyString",
      :senha => "MyString"
    ))
  end

  it "renders the edit restaurante form" do
    render

    assert_select "form[action=?][method=?]", restaurante_path(@restaurante), "post" do

      assert_select "input#restaurante_nome[name=?]", "restaurante[nome]"

      assert_select "input#restaurante_cnpj[name=?]", "restaurante[cnpj]"

      assert_select "input#restaurante_razao_social[name=?]", "restaurante[razao_social]"

      assert_select "input#restaurante_usuario[name=?]", "restaurante[usuario]"

      assert_select "input#restaurante_senha[name=?]", "restaurante[senha]"
    end
  end
end
