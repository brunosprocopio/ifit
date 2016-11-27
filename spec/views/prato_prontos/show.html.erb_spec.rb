require 'rails_helper'

RSpec.describe "prato_prontos/show.html.erb", type: :view do
  before(:each) do
    Sessao.create(:id => 1)
    Restaurante.create(:id => 2, :nome => "rest2", :usuario => "teste2", :senha => "teste2", :cartao_debito => false, :cartao_credito => true, :dinheiro => true)
    RestaurantesProximo.create(:id => 2, :sessao_id => 1, :restaurante_id => 2)
    Prato.create(:id => 2, :nome => "p2", :descricao => "d2", :alema => 0, :arabe => 1, :asiatica => 0, :brasileira => 0, :chinesa => 0, :francesa => 0, :indiana => 0, :italiana => 0, :japonesa => 0, :mediterraneo => 0, :mexicana => 0, :portuguesa => 0, :tailandesa => 0, :tipo => 0, :restaurante_id => 2)
    PratoPronto.create(:id => 1, :preco => 50, :prato_id => 2)
    @prato = Prato.find(2)
    @pp = PratoPronto.find_by_prato_id(2)
    @restaurante = Restaurante.find(2)
    render
  end

  it "should have information of a plate" do
    expect(response).to have_content(@prato.descricao)
    expect(response).to have_content(@pp.preco)
    expect(response).to have_link("Restaurante: #{@restaurante.nome}", href: "/restaurantes/#{@prato.id}")
    expect(response).to have_link ('Comprar')
  end
end
