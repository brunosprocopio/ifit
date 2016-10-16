require 'rails_helper'

RSpec.describe "restaurantes_proximos/new", type: :view do
  before(:each) do
    assign(:restaurantes_proximo, RestaurantesProximo.new(
      :distancia => 1,
      :sessao => nil,
      :restaurante => nil
    ))
  end

  it "renders new restaurantes_proximo form" do
    render

    assert_select "form[action=?][method=?]", restaurantes_proximos_path, "post" do

      assert_select "input#restaurantes_proximo_distancia[name=?]", "restaurantes_proximo[distancia]"

      assert_select "input#restaurantes_proximo_sessao_id[name=?]", "restaurantes_proximo[sessao_id]"

      assert_select "input#restaurantes_proximo_restaurante_id[name=?]", "restaurantes_proximo[restaurante_id]"
    end
  end
end
