require 'spec_helper'

describe "speakers/new" do
  before(:each) do
    assign(:speaker, stub_model(Speaker,
      :first_name => "MyString",
      :last_name => "MyString",
      :suffix => "MyString",
      :company_name => "MyString",
      :title => "MyString",
      :bio => "MyString",
      :img => "MyString",
      :twitter => "MyString",
      :email => "MyString"
    ).as_new_record)
  end

  it "renders new speaker form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", speakers_path, "post" do
      assert_select "input#speaker_first_name[name=?]", "speaker[first_name]"
      assert_select "input#speaker_last_name[name=?]", "speaker[last_name]"
      assert_select "input#speaker_suffix[name=?]", "speaker[suffix]"
      assert_select "input#speaker_company_name[name=?]", "speaker[company_name]"
      assert_select "input#speaker_title[name=?]", "speaker[title]"
      assert_select "input#speaker_bio[name=?]", "speaker[bio]"
      assert_select "input#speaker_img[name=?]", "speaker[img]"
      assert_select "input#speaker_twitter[name=?]", "speaker[twitter]"
      assert_select "input#speaker_email[name=?]", "speaker[email]"
    end
  end
end
