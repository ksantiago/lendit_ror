require 'spec_helper'

describe "speakers/show" do
  before(:each) do
    @speaker = assign(:speaker, stub_model(Speaker,
      :first_name => "First Name",
      :last_name => "Last Name",
      :suffix => "Suffix",
      :company_name => "Company Name",
      :title => "Title",
      :bio => "Bio",
      :img => "Img",
      :twitter => "Twitter",
      :email => "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/First Name/)
    rendered.should match(/Last Name/)
    rendered.should match(/Suffix/)
    rendered.should match(/Company Name/)
    rendered.should match(/Title/)
    rendered.should match(/Bio/)
    rendered.should match(/Img/)
    rendered.should match(/Twitter/)
    rendered.should match(/Email/)
  end
end
