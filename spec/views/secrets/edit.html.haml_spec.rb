require 'rails_helper'

RSpec.describe "secrets/edit", type: :view do
  before(:each) do
    @secret = assign(:secret, Secret.create!(
      :title => "MyString",
      :text => "MyString",
      :tags => "MyString"
    ))
  end

  it "renders the edit secret form" do
    render

    assert_select "form[action=?][method=?]", secret_path(@secret), "post" do

      assert_select "input#secret_title[name=?]", "secret[title]"

      assert_select "input#secret_text[name=?]", "secret[text]"

      assert_select "input#secret_tags[name=?]", "secret[tags]"
    end
  end
end
