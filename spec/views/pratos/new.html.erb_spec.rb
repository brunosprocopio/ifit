require 'rails_helper'

RSpec.describe "pratos/new", type: :view do
  before(:each) do
    assign(:prato, Prato.new(
      :nome => "MyString",
      :descricao => "MyString",
      :cozinha => 1,
      :tipo => 1
    ))
  end

  it "renders new prato form" do
    render

    assert_select "form[action=?][method=?]", pratos_path, "post" do

      assert_select "input#prato_nome[name=?]", "prato[nome]"

      assert_select "input#prato_descricao[name=?]", "prato[descricao]"

      assert_select "input#prato_cozinha[name=?]", "prato[cozinha]"

      assert_select "input#prato_tipo[name=?]", "prato[tipo]"
    end
  end
end
