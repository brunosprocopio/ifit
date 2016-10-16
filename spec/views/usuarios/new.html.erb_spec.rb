require 'rails_helper'

RSpec.describe "usuarios/new", type: :view do
  before(:each) do
    assign(:usuario, Usuario.new(
      :nome => "MyString",
      :cpf => 1,
      :idade => 1,
      :usuario => "MyString",
      :senha => "MyString",
      :sessao => nil
    ))
  end

  it "renders new usuario form" do
    render

    assert_select "form[action=?][method=?]", usuarios_path, "post" do

      assert_select "input#usuario_nome[name=?]", "usuario[nome]"

      assert_select "input#usuario_cpf[name=?]", "usuario[cpf]"

      assert_select "input#usuario_idade[name=?]", "usuario[idade]"

      assert_select "input#usuario_usuario[name=?]", "usuario[usuario]"

      assert_select "input#usuario_senha[name=?]", "usuario[senha]"

      assert_select "input#usuario_sessao_id[name=?]", "usuario[sessao_id]"
    end
  end
end
