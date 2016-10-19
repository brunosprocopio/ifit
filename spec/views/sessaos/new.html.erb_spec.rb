require 'rails_helper'

RSpec.describe "sessaos/new", type: :view do
  before(:each) do
    assign(:sessao, Sessao.new())
  end

  xit "renders new sessao form" do
    render

    assert_select "form[action=?][method=?]", sessaos_path, "post" do
    end
  end
end
