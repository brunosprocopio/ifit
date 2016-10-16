require 'rails_helper'

RSpec.describe "prato_prontos/index", type: :view do
  before(:each) do
    assign(:prato_prontos, [
      PratoPronto.create!(
        :preco => 2,
        :prato => nil
      ),
      PratoPronto.create!(
        :preco => 2,
        :prato => nil
      )
    ])
  end

  it "renders a list of prato_prontos" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
