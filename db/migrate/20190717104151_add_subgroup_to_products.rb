class AddSubgroupToProducts < ActiveRecord::Migration[5.2]
  def change
    add_reference :products, :subgroup, foreign_key: true
 remove_column :products, :category_id
  end
end
