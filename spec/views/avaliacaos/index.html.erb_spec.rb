require 'rails_helper'

RSpec.describe "avaliacaos/index", type: :view do
  before(:each) do
    assign(:avaliacaos, [
      Avaliacao.create!(
        :nota_alimento => 2,
        :comentario => "",
        :nota_custo => 3,
        :nota_geral => 4
      ),
      Avaliacao.create!(
        :nota_alimento => 2,
        :comentario => "",
        :nota_custo => 3,
        :nota_geral => 4
      )
    ])
  end

  xit "renders a list of avaliacaos" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
