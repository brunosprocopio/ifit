require 'rails_helper'

RSpec.describe "pagamento_aceitos/index", type: :view do
  before(:each) do
    assign(:pagamento_aceitos, [
      PagamentoAceito.create!(
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
      ),
      PagamentoAceito.create!(
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
      )
    ])
  end

  xit "renders a list of pagamento_aceitos" do
    render
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
