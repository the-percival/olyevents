require 'spec_helper'

describe "venues/index" do
  before(:each) do
    assign(:venues, [
      stub_model(Venue,
        :name => "Name",
        :description => "MyText",
        :wiki_url => "Wiki Url",
        :website => "Website",
        :address => "Address"
      ),
      stub_model(Venue,
        :name => "Name",
        :description => "MyText",
        :wiki_url => "Wiki Url",
        :website => "Website",
        :address => "Address"
      )
    ])
  end

  it "renders a list of venues" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Wiki Url".to_s, :count => 2
    assert_select "tr>td", :text => "Website".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
  end
end
