json.extract! event, :id, :name, :description, :event_type, :start_date, :end_date, :minister, :venue_id, :created_at, :updated_at
json.url event_url(event, format: :json)