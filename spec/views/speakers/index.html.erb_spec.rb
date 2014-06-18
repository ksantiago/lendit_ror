require 'spec_helper'

describe "speakers/index" do
  before(:each) do
    assign(:speakers, [
      stub_model(Speaker,
        :first_name => "First Name",
        :last_name => "Last Name",
        :suffix => "Suffix",
        :company_name => "Company Name",
        :title => "Title",
        :bio => "Bio",
        :img => "Img",
        :twitter => "Twitter",
        :email => "Email"
      ),
      stub_model(Speaker,
        :first_name => "First Name",
        :last_name => "Last Name",
        :suffix => "Suffix",
        :company_name => "Company Name",
        :title => "Title",
        :bio => "Bio",
        :img => "Img",
        :twitter => "Twitter",
        :email => "Email"
      )
    ])
  end

  it "renders a list of speakers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Suffix".to_s, :count => 2
    assert_select "tr>td", :text => "Company Name".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Bio".to_s, :count => 2
    assert_select "tr>td", :text => "Img".to_s, :count => 2
    assert_select "tr>td", :text => "Twitter".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
