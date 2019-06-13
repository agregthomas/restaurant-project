class ChangeTypeToSceneInRestaurants < ActiveRecord::Migration[5.2]
  def change
    rename_column :restaurants, :type, :scene
  end
end
