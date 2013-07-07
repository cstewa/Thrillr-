class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :seat_number
      t.string :price
      t.integer :showing_id
      t.integer :user_id

      t.timestamps
    end
  end
end
