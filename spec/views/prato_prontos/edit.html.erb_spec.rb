require 'rails_helper'

RSpec.describe "prato_prontos/edit", type: :view do
  before(:each) do
    @prato_pronto = assign(:prato_pronto, PratoPronto.create!(
      :preco => 1,
      :prato => nil
    ))
  end

  xit "renders the edit prato_pronto form" do
    render

    assert_select "form[action=?][method=?]", prato_pronto_path(@prato_pronto), "post" do

      assert_select "input#prato_pronto_preco[name=?]", "prato_pronto[preco]"

      assert_select "input#prato_pronto_prato_id[name=?]", "prato_pronto[prato_id]"
    end
  end
end
