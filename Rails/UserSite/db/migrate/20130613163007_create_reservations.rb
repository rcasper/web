class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.date :date
      t.time :time
      t.integer :people
      t.string :name
      t.string :phone

      t.timestamps
    end
  end
end
