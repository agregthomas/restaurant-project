class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :neighborhood
      t.string :address
      t.decimal :price
      t.string :category
      t.string :type
      t.string :food
      t.string :comments

      t.timestamps
    end
  end
end
