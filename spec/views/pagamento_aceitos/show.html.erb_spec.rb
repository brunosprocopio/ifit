require 'rails_helper'

RSpec.describe "pagamento_aceitos/show", type: :view do
  before(:each) do
    @pagamento_aceito = assign(:pagamento_aceito, PagamentoAceito.create!(
      :cheque => false,
      :credito-amer-expre => false,
      :credito-diners => false,
      :credito-goodcard => false,
      :credito-hipercard => false,
      :credito-mastercard => false,
      :credito-verdecard => false,
      :credito-visa => false,
      :credito-banricompras => false,
      :dinheiro => false,
      :debito-banricompras => false,
      :debito-bo => false,
      :debito-mastercard => false,
      :debito-visa => false,
      :vale-alelo => false,
      :vale-sodexo => false,
      :vale-ticket => false,
      :vale-valecard => false,
      :vale-verocard => false,
      :vale-srsmart => false,
      :references => ""
    ))
  end

  xit "renders attributes in <p>" do
    render
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(//)
  end
end
