require 'rails_helper'

RSpec.describe "alimento_quantidades/index", type: :view do
  before(:each) do
    assign(:alimento_quantidades, [
      AlimentoQuantidade.create!(
        :nome => "Nome",
        :quantidade => 2,
        :prato_pronto => nil
      ),
      AlimentoQuantidade.create!(
        :nome => "Nome",
        :quantidade => 2,
        :prato_pronto => nil
      )
    ])
  end

  it "renders a list of alimento_quantidades" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
