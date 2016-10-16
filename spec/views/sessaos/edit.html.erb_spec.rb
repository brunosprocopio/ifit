require 'rails_helper'

RSpec.describe "sessaos/edit", type: :view do
  before(:each) do
    @sessao = assign(:sessao, Sessao.create!())
  end

  it "renders the edit sessao form" do
    render

    assert_select "form[action=?][method=?]", sessao_path(@sessao), "post" do
    end
  end
end
