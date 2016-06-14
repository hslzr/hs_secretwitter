require 'rails_helper'

RSpec.describe "secrets/show", type: :view do
  before(:each) do
    @secret = assign(:secret, Secret.create!(
      :title => "Title",
      :text => "Text",
      :tags => "Tags"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Text/)
    expect(rendered).to match(/Tags/)
  end
end
