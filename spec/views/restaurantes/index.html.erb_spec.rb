require 'rails_helper'

RSpec.describe "restaurantes/index", type: :view do
  before(:each) do
    assign(:restaurantes, [
      Restaurante.create!(
        :nome => "Nome",
        :cnpj => "Cnpj",
        :razao_social => "Razao Social",
        :usuario => "Usuario",
        :senha => "Senha"
      ),
      Restaurante.create!(
        :nome => "Nome",
        :cnpj => "Cnpj",
        :razao_social => "Razao Social",
        :usuario => "Usuario",
        :senha => "Senha"
      )
    ])
  end

  xit "renders a list of restaurantes" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Cnpj".to_s, :count => 2
    assert_select "tr>td", :text => "Razao Social".to_s, :count => 2
    assert_select "tr>td", :text => "Usuario".to_s, :count => 2
    assert_select "tr>td", :text => "Senha".to_s, :count => 2
  end
end
