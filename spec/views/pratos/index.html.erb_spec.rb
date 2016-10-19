require 'rails_helper'

RSpec.describe "pratos/index", type: :view do
  before(:each) do
    assign(:pratos, [
      Prato.create!(
        :nome => "Nome",
        :descricao => "Descricao",
        :cozinha => 2,
        :tipo => 3
      ),
      Prato.create!(
        :nome => "Nome",
        :descricao => "Descricao",
        :cozinha => 2,
        :tipo => 3
      )
    ])
  end

  xit "renders a list of pratos" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Descricao".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
