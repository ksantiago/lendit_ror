require 'spec_helper'

describe "sponsors/show" do
  before(:each) do
    @sponsor = assign(:sponsor, stub_model(Sponsor,
      :company_name => "Company Name",
      :image => "Image",
      :description => "MyText",
      :site_url => "Site Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Company Name/)
    rendered.should match(/Image/)
    rendered.should match(/MyText/)
    rendered.should match(/Site Url/)
  end
end
