require 'rails_helper'

RSpec.describe "alimento_precos/index", type: :view do
  before(:each) do
    assign(:alimento_precos, [
      AlimentoPreco.create!(
        :nome => "Nome",
        :preco => 2,
        :prato_montado => nil
      ),
      AlimentoPreco.create!(
        :nome => "Nome",
        :preco => 2,
        :prato_montado => nil
      )
    ])
  end

  it "renders a list of alimento_precos" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
