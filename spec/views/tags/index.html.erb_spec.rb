require 'rails_helper'

RSpec.describe "tags/index", type: :view do
  before(:each) do
    assign(:tags, [
      Tag.create!(
        :nome => "Nome",
        :prato => nil
      ),
      Tag.create!(
        :nome => "Nome",
        :prato => nil
      )
    ])
  end

  xit "renders a list of tags" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
