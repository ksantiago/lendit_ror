require 'spec_helper'

describe "venues/index" do
  before(:each) do
    assign(:venues, [
      stub_model(Venue,
        :name => "Name",
        :address1 => "Address1",
        :address2 => "Address2",
        :city => "City",
        :zip_code => "Zip Code",
        :phone_number => "Phone Number",
        :site_url => "Site Url"
      ),
      stub_model(Venue,
        :name => "Name",
        :address1 => "Address1",
        :address2 => "Address2",
        :city => "City",
        :zip_code => "Zip Code",
        :phone_number => "Phone Number",
        :site_url => "Site Url"
      )
    ])
  end

  it "renders a list of venues" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address1".to_s, :count => 2
    assert_select "tr>td", :text => "Address2".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "Zip Code".to_s, :count => 2
    assert_select "tr>td", :text => "Phone Number".to_s, :count => 2
    assert_select "tr>td", :text => "Site Url".to_s, :count => 2
  end
end
