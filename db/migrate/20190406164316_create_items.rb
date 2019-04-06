class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.integer :id
      t.string :name
      t.references :item_categories, foreign_key: true
      t.float :rate

      t.timestamps
    end
  end
end
