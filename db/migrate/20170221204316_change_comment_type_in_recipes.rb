class ChangeCommentTypeInRecipes < ActiveRecord::Migration[5.0]
  def change
    change_column :recipes, :comments, :integer
  end
end
