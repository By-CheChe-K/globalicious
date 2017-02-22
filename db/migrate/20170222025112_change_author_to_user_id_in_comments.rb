class ChangeAuthorToUserIdInComments < ActiveRecord::Migration[5.0]
  def change
    rename_column :comments, :author, :user_id
  end
end
