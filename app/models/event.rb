class Event < ActiveRecord::Base
  belongs_to :venue


  scope :upcoming, -> (num_of_events) { order(start_date: :asc).where("start_date > ? AND event_type = ?", Date.current, 1).limit(num_of_events) }
  scope :meeting, -> (num_of_events) { order(start_date: :asc).where("start_date > ? AND event_type = ?", Date.current, 2).limit(num_of_events) }
end
