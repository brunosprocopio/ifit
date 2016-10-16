require 'rails_helper'

RSpec.describe "avaliacaos/new", type: :view do
  before(:each) do
    assign(:avaliacao, Avaliacao.new(
      :nota_alimento => 1,
      :comentario => "",
      :nota_custo => 1,
      :nota_geral => 1
    ))
  end

  it "renders new avaliacao form" do
    render

    assert_select "form[action=?][method=?]", avaliacaos_path, "post" do

      assert_select "input#avaliacao_nota_alimento[name=?]", "avaliacao[nota_alimento]"

      assert_select "input#avaliacao_comentario[name=?]", "avaliacao[comentario]"

      assert_select "input#avaliacao_nota_custo[name=?]", "avaliacao[nota_custo]"

      assert_select "input#avaliacao_nota_geral[name=?]", "avaliacao[nota_geral]"
    end
  end
end
