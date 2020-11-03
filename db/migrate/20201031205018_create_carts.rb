class CreateCarts < ActiveRecord::Migration[5.2]
  def change
    create_table :carts do |t|
      t.string :name
      t.text :price
      t.text :count

      t.timestamps
    end
  end
end
