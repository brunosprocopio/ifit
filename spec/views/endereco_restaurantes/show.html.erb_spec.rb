require 'rails_helper'

RSpec.describe "endereco_restaurantes/show", type: :view do
  before(:each) do
    @endereco_restaurante = assign(:endereco_restaurante, EnderecoRestaurante.create!(
      :cep => 2,
      :pais => "Pais",
      :estado => "Estado",
      :cidade => "Cidade",
      :rua => "Rua",
      :numero => 3,
      :complemento => 4,
      :restaurante => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Pais/)
    expect(rendered).to match(/Estado/)
    expect(rendered).to match(/Cidade/)
    expect(rendered).to match(/Rua/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(//)
  end
end
