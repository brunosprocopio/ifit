require 'rails_helper'

RSpec.describe "usuarios/show", type: :view do
  before(:each) do
    @usuario = assign(:usuario, Usuario.create!(
      :nome => "Nome",
      :cpf => 2,
      :idade => 3,
      :usuario => "Usuario",
      :senha => "Senha",
      :sessao => nil
    ))
  end

  xit "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Usuario/)
    expect(rendered).to match(/Senha/)
    expect(rendered).to match(//)
  end
end
