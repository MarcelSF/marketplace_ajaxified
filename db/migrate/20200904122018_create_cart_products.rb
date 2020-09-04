class CreateCartProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :cart_products do |t|
      t.references :product, null: false, foreign_key: true
      t.references :shopping_cart, null: false, foreign_key: true
      t.integer :price

      t.timestamps
    end
  end
end
