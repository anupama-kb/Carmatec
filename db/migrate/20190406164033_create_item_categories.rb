class CreateItemCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :item_categories do |t|
      t.integer :id
      t.string :name

      t.timestamps
    end
  end
end
