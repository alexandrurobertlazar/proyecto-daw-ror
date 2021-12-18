class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.decimal :oldPrice
      t.string :description
      t.string :product_attributes
      t.string :quality
      t.string :company
      t.string :delivery
      t.datetime :delivery_time
      t.binary :image
      t.integer :stock
      t.boolean :bestSeller

      t.timestamps
    end
  end
end
