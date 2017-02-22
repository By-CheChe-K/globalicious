class ChangeUserIdTypeInRecipes < ActiveRecord::Migration[5.0]
  def change
    change_column :recipes, :user_id, :integer
  end
end
