require 'rails_helper'

RSpec.describe "alimento_precos/show", type: :view do
  before(:each) do
    @alimento_preco = assign(:alimento_preco, AlimentoPreco.create!(
      :nome => "Nome",
      :preco => 2,
      :prato_montado => nil
    ))
  end

  xit "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
  end
end
