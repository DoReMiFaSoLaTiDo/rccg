require 'rails_helper'

RSpec.describe "events/new", type: :view do
  before(:each) do
    assign(:event, Event.new(
      :name => "MyString",
      :description => "MyText",
      :event_type => 1,
      :minister => "MyString",
      :venue => nil
    ))
  end

  it "renders new event form" do
    render

    assert_select "form[action=?][method=?]", events_path, "post" do

      assert_select "input#event_name[name=?]", "event[name]"

      assert_select "textarea#event_description[name=?]", "event[description]"

      assert_select "input#event_event_type[name=?]", "event[event_type]"

      assert_select "input#event_minister[name=?]", "event[minister]"

      assert_select "input#event_venue_id[name=?]", "event[venue_id]"
    end
  end
end
