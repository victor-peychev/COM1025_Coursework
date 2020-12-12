json.extract! ticket, :id, :passport_n, :flight_n, :seat, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)
