require 'rails_helper'

RSpec.describe "prato_montados/show", type: :view do
  before(:each) do
    @prato_montado = assign(:prato_montado, PratoMontado.create!(
      :references => ""
    ))
  end

  xit "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
  end
end
