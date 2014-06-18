require 'spec_helper'

describe "venues/edit" do
  before(:each) do
    @venue = assign(:venue, stub_model(Venue,
      :name => "MyString",
      :address1 => "MyString",
      :address2 => "MyString",
      :city => "MyString",
      :zip_code => "MyString",
      :phone_number => "MyString",
      :site_url => "MyString"
    ))
  end

  it "renders the edit venue form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", venue_path(@venue), "post" do
      assert_select "input#venue_name[name=?]", "venue[name]"
      assert_select "input#venue_address1[name=?]", "venue[address1]"
      assert_select "input#venue_address2[name=?]", "venue[address2]"
      assert_select "input#venue_city[name=?]", "venue[city]"
      assert_select "input#venue_zip_code[name=?]", "venue[zip_code]"
      assert_select "input#venue_phone_number[name=?]", "venue[phone_number]"
      assert_select "input#venue_site_url[name=?]", "venue[site_url]"
    end
  end
end
