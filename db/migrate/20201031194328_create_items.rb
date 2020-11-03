class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :image
      t.string :description
      t.integer :quantity
      t.string :cost

      t.timestamps
    end
  end
end
