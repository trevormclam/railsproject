class AddQuantityToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :quantity, :integer
  end
end
