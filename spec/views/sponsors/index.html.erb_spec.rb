require 'spec_helper'

describe "sponsors/index" do
  before(:each) do
    assign(:sponsors, [
      stub_model(Sponsor,
        :company_name => "Company Name",
        :image => "Image",
        :description => "MyText",
        :site_url => "Site Url"
      ),
      stub_model(Sponsor,
        :company_name => "Company Name",
        :image => "Image",
        :description => "MyText",
        :site_url => "Site Url"
      )
    ])
  end

  it "renders a list of sponsors" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Company Name".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Site Url".to_s, :count => 2
  end
end
