require 'spec_helper'

describe "venues/new" do
  before(:each) do
    assign(:venue, stub_model(Venue,
      :name => "MyString",
      :description => "MyText",
      :wiki_url => "MyString",
      :website => "MyString",
      :address => "MyString"
    ).as_new_record)
  end

  it "renders new venue form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => venues_path, :method => "post" do
      assert_select "input#venue_name", :name => "venue[name]"
      assert_select "textarea#venue_description", :name => "venue[description]"
      assert_select "input#venue_wiki_url", :name => "venue[wiki_url]"
      assert_select "input#venue_website", :name => "venue[website]"
      assert_select "input#venue_address", :name => "venue[address]"
    end
  end
end
