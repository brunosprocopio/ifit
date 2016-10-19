require 'rails_helper'

RSpec.describe "prato_montados/new", type: :view do
  before(:each) do
    assign(:prato_montado, PratoMontado.new(
      :references => ""
    ))
  end

  xit "renders new prato_montado form" do
    render

    assert_select "form[action=?][method=?]", prato_montados_path, "post" do

      assert_select "input#prato_montado_references[name=?]", "prato_montado[references]"
    end
  end
end
