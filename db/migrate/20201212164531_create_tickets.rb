class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.string :passport_n
      t.string :flight_n
      t.string :seat

      t.timestamps
    end
  end
end
