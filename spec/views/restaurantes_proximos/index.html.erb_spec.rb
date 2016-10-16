require 'rails_helper'

RSpec.describe "restaurantes_proximos/index", type: :view do
  before(:each) do
    assign(:restaurantes_proximos, [
      RestaurantesProximo.create!(
        :distancia => 2,
        :sessao => nil,
        :restaurante => nil
      ),
      RestaurantesProximo.create!(
        :distancia => 2,
        :sessao => nil,
        :restaurante => nil
      )
    ])
  end

  it "renders a list of restaurantes_proximos" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
