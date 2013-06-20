class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.string :name
      t.string :phone
      t.datetime :time
      t.string :people

      t.timestamps
    end
  end
end
