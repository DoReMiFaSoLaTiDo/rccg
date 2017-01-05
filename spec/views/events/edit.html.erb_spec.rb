require 'rails_helper'

RSpec.describe "events/edit", type: :view do
  before(:each) do
    @event = assign(:event, Event.create!(
      :name => "MyString",
      :description => "MyText",
      :event_type => 1,
      :minister => "MyString",
      :venue => nil
    ))
  end

  it "renders the edit event form" do
    render

    assert_select "form[action=?][method=?]", event_path(@event), "post" do

      assert_select "input#event_name[name=?]", "event[name]"

      assert_select "textarea#event_description[name=?]", "event[description]"

      assert_select "input#event_event_type[name=?]", "event[event_type]"

      assert_select "input#event_minister[name=?]", "event[minister]"

      assert_select "input#event_venue_id[name=?]", "event[venue_id]"
    end
  end
end
