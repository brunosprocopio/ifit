require 'rails_helper'

RSpec.describe "prato_prontos/new", type: :view do
  before(:each) do
    assign(:prato_pronto, PratoPronto.new(
      :preco => 1,
      :prato => nil
    ))
  end

  it "renders new prato_pronto form" do
    render

    assert_select "form[action=?][method=?]", prato_prontos_path, "post" do

      assert_select "input#prato_pronto_preco[name=?]", "prato_pronto[preco]"

      assert_select "input#prato_pronto_prato_id[name=?]", "prato_pronto[prato_id]"
    end
  end
end
