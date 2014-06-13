require 'spec_helper'

describe "sponsors/edit" do
  before(:each) do
    @sponsor = assign(:sponsor, stub_model(Sponsor,
      :company_name => "MyString",
      :image => "MyString",
      :description => "MyText",
      :site_url => "MyString"
    ))
  end

  it "renders the edit sponsor form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", sponsor_path(@sponsor), "post" do
      assert_select "input#sponsor_company_name[name=?]", "sponsor[company_name]"
      assert_select "input#sponsor_image[name=?]", "sponsor[image]"
      assert_select "textarea#sponsor_description[name=?]", "sponsor[description]"
      assert_select "input#sponsor_site_url[name=?]", "sponsor[site_url]"
    end
  end
end
