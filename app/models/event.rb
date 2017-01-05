class Event < ActiveRecord::Base
  belongs_to :venue


  scope :upcoming, -> (num_of_events) { order(start_date: :asc).where("start_date > ? AND event_type = ?", Date.current, 0).limit(num_albums) }
  scope :meeting, -> (num_of_events) { order(start_date: :asc).where("start_date > ? AND event_type = ?", Date.current, 1).limit(num_albums) }
end
