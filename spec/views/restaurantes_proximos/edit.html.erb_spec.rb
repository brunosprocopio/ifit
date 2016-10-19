require 'rails_helper'

RSpec.describe "restaurantes_proximos/edit", type: :view do
  before(:each) do
    @restaurantes_proximo = assign(:restaurantes_proximo, RestaurantesProximo.create!(
      :distancia => 1,
      :sessao => nil,
      :restaurante => nil
    ))
  end

  xit "renders the edit restaurantes_proximo form" do
    render

    assert_select "form[action=?][method=?]", restaurantes_proximo_path(@restaurantes_proximo), "post" do

      assert_select "input#restaurantes_proximo_distancia[name=?]", "restaurantes_proximo[distancia]"

      assert_select "input#restaurantes_proximo_sessao_id[name=?]", "restaurantes_proximo[sessao_id]"

      assert_select "input#restaurantes_proximo_restaurante_id[name=?]", "restaurantes_proximo[restaurante_id]"
    end
  end
end
