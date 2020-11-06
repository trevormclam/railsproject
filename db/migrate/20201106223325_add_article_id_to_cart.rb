class AddArticleIdToCart < ActiveRecord::Migration[5.2]
  def change
    add_column :carts, :articleid, :integer
  end
end
