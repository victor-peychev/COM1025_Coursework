class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.string :name
      t.date :date_of_birth
      t.string :phone_number
      t.string :seat
      t.string :flight_number
      t.string :user_id

      t.timestamps
    end
  end
end
