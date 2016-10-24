require 'rails_helper'

RSpec.describe "avaliacaos/edit", type: :view do
  before(:each) do
    @avaliacao = assign(:avaliacao, Avaliacao.create!(
      :nota_alimento => 1,
      :comentario => "",
      :nota_custo => 1,
      :nota_geral => 1
    ))
  end

  xit "renders the edit avaliacao form" do
    render

    assert_select "form[action=?][method=?]", avaliacao_path(@avaliacao), "post" do

      assert_select "input#avaliacao_nota_alimento[name=?]", "avaliacao[nota_alimento]"

      assert_select "input#avaliacao_comentario[name=?]", "avaliacao[comentario]"

      assert_select "input#avaliacao_nota_custo[name=?]", "avaliacao[nota_custo]"

      assert_select "input#avaliacao_nota_geral[name=?]", "avaliacao[nota_geral]"
    end
  end
end
