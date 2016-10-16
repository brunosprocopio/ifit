require 'rails_helper'

RSpec.describe "prato_prontos/show", type: :view do
  before(:each) do
    @prato_pronto = assign(:prato_pronto, PratoPronto.create!(
      :preco => 2,
      :prato => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
  end
end
