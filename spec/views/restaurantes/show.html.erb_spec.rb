require 'rails_helper'

RSpec.describe "restaurantes/show", type: :view do
  before(:each) do
    @restaurante = assign(:restaurante, Restaurante.create!(
      :nome => "Nome",
      :cnpj => "Cnpj",
      :razao_social => "Razao Social",
      :usuario => "Usuario",
      :senha => "Senha"
    ))
  end

  xit "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Cnpj/)
    expect(rendered).to match(/Razao Social/)
    expect(rendered).to match(/Usuario/)
    expect(rendered).to match(/Senha/)
  end
end
