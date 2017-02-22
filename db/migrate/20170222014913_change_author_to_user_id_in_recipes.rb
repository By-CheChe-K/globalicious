class ChangeAuthorToUserIdInRecipes < ActiveRecord::Migration[5.0]
  def change
    rename_column :recipes, :author, :user_id
  end
end
