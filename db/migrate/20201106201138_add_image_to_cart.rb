class AddImageToCart < ActiveRecord::Migration[5.2]
  def change
    add_column :carts, :image, :string
  end
end
