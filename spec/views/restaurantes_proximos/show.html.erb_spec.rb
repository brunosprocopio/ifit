require 'rails_helper'

RSpec.describe "restaurantes_proximos/show", type: :view do
  before(:each) do
    @restaurantes_proximo = assign(:restaurantes_proximo, RestaurantesProximo.create!(
      :distancia => 2,
      :sessao => nil,
      :restaurante => nil
    ))
  end

  xit "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
