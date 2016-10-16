require 'rails_helper'

RSpec.describe "pratos/edit", type: :view do
  before(:each) do
    @prato = assign(:prato, Prato.create!(
      :nome => "MyString",
      :descricao => "MyString",
      :cozinha => 1,
      :tipo => 1
    ))
  end

  it "renders the edit prato form" do
    render

    assert_select "form[action=?][method=?]", prato_path(@prato), "post" do

      assert_select "input#prato_nome[name=?]", "prato[nome]"

      assert_select "input#prato_descricao[name=?]", "prato[descricao]"

      assert_select "input#prato_cozinha[name=?]", "prato[cozinha]"

      assert_select "input#prato_tipo[name=?]", "prato[tipo]"
    end
  end
end
