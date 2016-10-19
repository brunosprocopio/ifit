require 'rails_helper'

RSpec.describe "pagamento_aceitos/edit", type: :view do
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

  xit "renders the edit pagamento_aceito form" do
    render

    assert_select "form[action=?][method=?]", pagamento_aceito_path(@pagamento_aceito), "post" do

      assert_select "input#pagamento_aceito_cheque[name=?]", "pagamento_aceito[cheque]"

      assert_select "input#pagamento_aceito_credito-amer-expre[name=?]", "pagamento_aceito[credito-amer-expre]"

      assert_select "input#pagamento_aceito_credito-diners[name=?]", "pagamento_aceito[credito-diners]"

      assert_select "input#pagamento_aceito_credito-goodcard[name=?]", "pagamento_aceito[credito-goodcard]"

      assert_select "input#pagamento_aceito_credito-hipercard[name=?]", "pagamento_aceito[credito-hipercard]"

      assert_select "input#pagamento_aceito_credito-mastercard[name=?]", "pagamento_aceito[credito-mastercard]"

      assert_select "input#pagamento_aceito_credito-verdecard[name=?]", "pagamento_aceito[credito-verdecard]"

      assert_select "input#pagamento_aceito_credito-visa[name=?]", "pagamento_aceito[credito-visa]"

      assert_select "input#pagamento_aceito_credito-banricompras[name=?]", "pagamento_aceito[credito-banricompras]"

      assert_select "input#pagamento_aceito_dinheiro[name=?]", "pagamento_aceito[dinheiro]"

      assert_select "input#pagamento_aceito_debito-banricompras[name=?]", "pagamento_aceito[debito-banricompras]"

      assert_select "input#pagamento_aceito_debito-bo[name=?]", "pagamento_aceito[debito-bo]"

      assert_select "input#pagamento_aceito_debito-mastercard[name=?]", "pagamento_aceito[debito-mastercard]"

      assert_select "input#pagamento_aceito_debito-visa[name=?]", "pagamento_aceito[debito-visa]"

      assert_select "input#pagamento_aceito_vale-alelo[name=?]", "pagamento_aceito[vale-alelo]"

      assert_select "input#pagamento_aceito_vale-sodexo[name=?]", "pagamento_aceito[vale-sodexo]"

      assert_select "input#pagamento_aceito_vale-ticket[name=?]", "pagamento_aceito[vale-ticket]"

      assert_select "input#pagamento_aceito_vale-valecard[name=?]", "pagamento_aceito[vale-valecard]"

      assert_select "input#pagamento_aceito_vale-verocard[name=?]", "pagamento_aceito[vale-verocard]"

      assert_select "input#pagamento_aceito_vale-srsmart[name=?]", "pagamento_aceito[vale-srsmart]"

      assert_select "input#pagamento_aceito_references[name=?]", "pagamento_aceito[references]"
    end
  end
end
