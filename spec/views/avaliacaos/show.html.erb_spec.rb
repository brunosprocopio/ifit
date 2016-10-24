require 'rails_helper'

RSpec.describe "avaliacaos/show", type: :view do
  before(:each) do
    @avaliacao = assign(:avaliacao, Avaliacao.create!(
      :nota_alimento => 2,
      :comentario => "",
      :nota_custo => 3,
      :nota_geral => 4
    ))
  end

  xit "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
  end
end
