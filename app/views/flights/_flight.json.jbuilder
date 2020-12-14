json.extract! flight, :id, :flight_num, :departing, :arriving, :date, :seats, :created_at, :updated_at
json.url flight_url(flight, format: :json)
