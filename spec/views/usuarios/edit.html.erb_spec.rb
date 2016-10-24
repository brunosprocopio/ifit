require 'rails_helper'

RSpec.describe "usuarios/edit", type: :view do
  before(:each) do
    @usuario = assign(:usuario, Usuario.create!(
      :nome => "MyString",
      :cpf => 1,
      :idade => 1,
      :usuario => "MyString",
      :senha => "MyString",
      :sessao => nil
    ))
  end

  xit "renders the edit usuario form" do
    render

    assert_select "form[action=?][method=?]", usuario_path(@usuario), "post" do

      assert_select "input#usuario_nome[name=?]", "usuario[nome]"

      assert_select "input#usuario_cpf[name=?]", "usuario[cpf]"

      assert_select "input#usuario_idade[name=?]", "usuario[idade]"

      assert_select "input#usuario_usuario[name=?]", "usuario[usuario]"

      assert_select "input#usuario_senha[name=?]", "usuario[senha]"

      assert_select "input#usuario_sessao_id[name=?]", "usuario[sessao_id]"
    end
  end
end
