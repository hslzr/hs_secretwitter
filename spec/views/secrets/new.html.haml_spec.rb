require 'rails_helper'

RSpec.describe "secrets/new", type: :view do
  before(:each) do
    assign(:secret, Secret.new(
      :title => "MyString",
      :text => "MyString",
      :tags => "MyString"
    ))
  end

  it "renders new secret form" do
    render

    assert_select "form[action=?][method=?]", secrets_path, "post" do

      assert_select "input#secret_title[name=?]", "secret[title]"

      assert_select "input#secret_text[name=?]", "secret[text]"

      assert_select "input#secret_tags[name=?]", "secret[tags]"
    end
  end
end
