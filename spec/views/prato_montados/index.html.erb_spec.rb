require 'rails_helper'

RSpec.describe "prato_montados/index", type: :view do
  before(:each) do
    assign(:prato_montados, [
      PratoMontado.create!(
        :references => ""
      ),
      PratoMontado.create!(
        :references => ""
      )
    ])
  end

  xit "renders a list of prato_montados" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
