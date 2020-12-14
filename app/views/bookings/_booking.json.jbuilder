json.extract! booking, :id, :name, :date_of_birth, :phone_number, :seat, :flight_number, :user_id, :created_at, :updated_at
json.url booking_url(booking, format: :json)
