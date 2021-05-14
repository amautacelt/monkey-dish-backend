class CreateMenus < ActiveRecord::Migration[6.1]
  def change
    create_table :menus do |t|
      t.string :restaurant_name
      t.string :restaurant_description
      t.integer :manager_id

      t.timestamps
    end
  end
end
