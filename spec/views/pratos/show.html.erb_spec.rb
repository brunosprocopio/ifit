require 'rails_helper'

RSpec.describe "pratos/show", type: :view do
  before(:each) do
    @prato = assign(:prato, Prato.create!(
      :nome => "Nome",
      :descricao => "Descricao",
      :cozinha => 2,
      :tipo => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Descricao/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
