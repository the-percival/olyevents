require 'spec_helper'

describe "events/new" do
  before(:each) do
    assign(:event, stub_model(Event,
      :name => "MyString",
      :description => "MyText",
      :featured => false,
      :cost => 1,
      :all_ages => false,
      :venue => 1
    ).as_new_record)
  end

  it "renders new event form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => events_path, :method => "post" do
      assert_select "input#event_name", :name => "event[name]"
      assert_select "textarea#event_description", :name => "event[description]"
      assert_select "input#event_featured", :name => "event[featured]"
      assert_select "input#event_cost", :name => "event[cost]"
      assert_select "input#event_all_ages", :name => "event[all_ages]"
      assert_select "input#event_venue", :name => "event[venue]"
    end
  end
end
