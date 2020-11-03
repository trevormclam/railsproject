class CreateCarts < ActiveRecord::Migration[5.2]
  def change
    create_table :carts do |t|
      t.string :item
      t.string :price

      t.timestamps
    end
  end
end
