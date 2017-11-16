class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.integer :quantity
      t.references :user, foreign_key: true
      t.references :product_type, foreign_key: true

      t.timestamps
    end
  end
end
