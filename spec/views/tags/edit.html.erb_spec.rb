require 'rails_helper'

RSpec.describe "tags/edit", type: :view do
  before(:each) do
    @tag = assign(:tag, Tag.create!(
      :nome => "MyString",
      :prato => nil
    ))
  end

  it "renders the edit tag form" do
    render

    assert_select "form[action=?][method=?]", tag_path(@tag), "post" do

      assert_select "input#tag_nome[name=?]", "tag[nome]"

      assert_select "input#tag_prato_id[name=?]", "tag[prato_id]"
    end
  end
end
