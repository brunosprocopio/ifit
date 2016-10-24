require 'rails_helper'

RSpec.describe "sessaos/show", type: :view do
  before(:each) do
    @sessao = assign(:sessao, Sessao.create!())
  end

  xit "renders attributes in <p>" do
    render
  end
end
