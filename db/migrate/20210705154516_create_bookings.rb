class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :event, null: false, foreign_key: true
      t.boolean :accepted
      t.text :self_introduction

      t.timestamps
    end
  end
end
