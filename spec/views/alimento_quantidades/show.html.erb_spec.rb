require 'rails_helper'

RSpec.describe "alimento_quantidades/show", type: :view do
  before(:each) do
    @alimento_quantidade = assign(:alimento_quantidade, AlimentoQuantidade.create!(
      :nome => "Nome",
      :quantidade => 2,
      :prato_pronto => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
  end
end
