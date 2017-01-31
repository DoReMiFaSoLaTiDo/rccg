class Event < ActiveRecord::Base
  enum event_types: {
    "Church Event"    =>  1,
    "Meeting"         =>  2,
    "Special Program" =>  3
  }

  belongs_to :venue

  validates :name, :description, presence: true
  validates :event_type, inclusion: event_types.keys

  scope :upcoming, -> (num_of_events) { order(start_date: :asc).where("start_date > ? AND event_type = ?", Date.current, 1).limit(num_of_events) }
  scope :meeting, -> (num_of_events) { order(start_date: :asc).where("start_date > ? AND event_type = ?", Date.current, 2).limit(num_of_events) }
end
