require 'rails_helper'

RSpec.describe "secrets/index", type: :view do
  before(:each) do
    assign(:secrets, [
      Secret.create!(
        :title => "Title",
        :text => "Text",
        :tags => "Tags"
      ),
      Secret.create!(
        :title => "Title",
        :text => "Text",
        :tags => "Tags"
      )
    ])
  end

  it "renders a list of secrets" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Text".to_s, :count => 2
    assert_select "tr>td", :text => "Tags".to_s, :count => 2
  end
end
