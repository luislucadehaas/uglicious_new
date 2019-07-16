class CreateFarms < ActiveRecord::Migration[5.2]
  def change
    create_table :farms do |t|
      t.string :name
      t.string :address
      t.string :photo
      t.references :user, foreign_key: true
      t.float :latitude
      t.float :longitude
      t.string :description

      t.timestamps
    end
  end
end
