require 'rails_helper'

RSpec.describe "tags/new", type: :view do
  before(:each) do
    assign(:tag, Tag.new(
      :nome => "MyString",
      :prato => nil
    ))
  end

  xit "renders new tag form" do
    render

    assert_select "form[action=?][method=?]", tags_path, "post" do

      assert_select "input#tag_nome[name=?]", "tag[nome]"

      assert_select "input#tag_prato_id[name=?]", "tag[prato_id]"
    end
  end
end
