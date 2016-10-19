require 'rails_helper'

RSpec.describe "endereco_restaurantes/edit", type: :view do
  before(:each) do
    @endereco_restaurante = assign(:endereco_restaurante, EnderecoRestaurante.create!(
      :cep => 1,
      :pais => "MyString",
      :estado => "MyString",
      :cidade => "MyString",
      :rua => "MyString",
      :numero => 1,
      :complemento => 1,
      :restaurante => nil
    ))
  end

  xit "renders the edit endereco_restaurante form" do
    render

    assert_select "form[action=?][method=?]", endereco_restaurante_path(@endereco_restaurante), "post" do

      assert_select "input#endereco_restaurante_cep[name=?]", "endereco_restaurante[cep]"

      assert_select "input#endereco_restaurante_pais[name=?]", "endereco_restaurante[pais]"

      assert_select "input#endereco_restaurante_estado[name=?]", "endereco_restaurante[estado]"

      assert_select "input#endereco_restaurante_cidade[name=?]", "endereco_restaurante[cidade]"

      assert_select "input#endereco_restaurante_rua[name=?]", "endereco_restaurante[rua]"

      assert_select "input#endereco_restaurante_numero[name=?]", "endereco_restaurante[numero]"

      assert_select "input#endereco_restaurante_complemento[name=?]", "endereco_restaurante[complemento]"

      assert_select "input#endereco_restaurante_restaurante_id[name=?]", "endereco_restaurante[restaurante_id]"
    end
  end
end
