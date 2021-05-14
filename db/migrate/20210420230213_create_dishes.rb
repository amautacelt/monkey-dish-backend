class CreateDishes < ActiveRecord::Migration[6.1]
  def change
    create_table :dishes do |t|
      t.string :name
      t.string :description
      t.string :category
      t.string :image
      t.integer :menu_id

      t.timestamps
    end
  end
end
