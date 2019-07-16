class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.string :photo
      t.integer :price_in_cents
      t.references :category, foreign_key: true
      t.integer :quantity_in_kg
      t.integer :min_quantity_to_order
      t.date :available_from
      t.date :available_until
      t.references :farm, foreign_key: true

      t.timestamps
    end
  end
end
