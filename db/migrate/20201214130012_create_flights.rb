class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.string :flight_num
      t.string :departing
      t.string :arriving
      t.datetime :date
      t.integer :seats

      t.timestamps
    end
  end
end
