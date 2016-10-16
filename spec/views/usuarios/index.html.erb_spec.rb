require 'rails_helper'

RSpec.describe "usuarios/index", type: :view do
  before(:each) do
    assign(:usuarios, [
      Usuario.create!(
        :nome => "Nome",
        :cpf => 2,
        :idade => 3,
        :usuario => "Usuario",
        :senha => "Senha",
        :sessao => nil
      ),
      Usuario.create!(
        :nome => "Nome",
        :cpf => 2,
        :idade => 3,
        :usuario => "Usuario",
        :senha => "Senha",
        :sessao => nil
      )
    ])
  end

  it "renders a list of usuarios" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Usuario".to_s, :count => 2
    assert_select "tr>td", :text => "Senha".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
