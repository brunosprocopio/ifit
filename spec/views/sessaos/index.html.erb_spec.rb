require 'rails_helper'

RSpec.describe "sessaos/index", type: :view do
  before(:each) do
    assign(:sessaos, [
      Sessao.create!(),
      Sessao.create!()
    ])
  end

  xit "renders a list of sessaos" do
    render
  end
end
