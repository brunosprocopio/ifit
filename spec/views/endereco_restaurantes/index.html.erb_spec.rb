require 'rails_helper'

RSpec.describe "endereco_restaurantes/index", type: :view do
  before(:each) do
    assign(:endereco_restaurantes, [
      EnderecoRestaurante.create!(
        :cep => 2,
        :pais => "Pais",
        :estado => "Estado",
        :cidade => "Cidade",
        :rua => "Rua",
        :numero => 3,
        :complemento => 4,
        :restaurante => nil
      ),
      EnderecoRestaurante.create!(
        :cep => 2,
        :pais => "Pais",
        :estado => "Estado",
        :cidade => "Cidade",
        :rua => "Rua",
        :numero => 3,
        :complemento => 4,
        :restaurante => nil
      )
    ])
  end

  xit "renders a list of endereco_restaurantes" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Pais".to_s, :count => 2
    assert_select "tr>td", :text => "Estado".to_s, :count => 2
    assert_select "tr>td", :text => "Cidade".to_s, :count => 2
    assert_select "tr>td", :text => "Rua".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
