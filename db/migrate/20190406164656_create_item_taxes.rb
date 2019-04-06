class CreateItemTaxes < ActiveRecord::Migration[5.2]
  def change
    create_table :item_taxes do |t|
      t.integer :id
      t.references :item, foreign_key: true
      t.decimal :tax_type
      t.float :tax

      t.timestamps
    end
  end
end
