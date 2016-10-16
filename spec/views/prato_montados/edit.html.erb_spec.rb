require 'rails_helper'

RSpec.describe "prato_montados/edit", type: :view do
  before(:each) do
    @prato_montado = assign(:prato_montado, PratoMontado.create!(
      :references => ""
    ))
  end

  it "renders the edit prato_montado form" do
    render

    assert_select "form[action=?][method=?]", prato_montado_path(@prato_montado), "post" do

      assert_select "input#prato_montado_references[name=?]", "prato_montado[references]"
    end
  end
end
