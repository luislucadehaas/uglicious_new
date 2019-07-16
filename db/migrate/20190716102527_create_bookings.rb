class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.date :delivery_date
      t.string :status
      t.references :product, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :price_in_cents
      t.string :address
      t.string :delivery_option
      t.integer :quantity_in_kg
      t.float :longitude
      t.float :latitude

      t.timestamps
    end
  end
end
