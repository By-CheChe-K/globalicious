class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :language
      t.string :password
      t.string :avatar
      t.integer :recipes
      t.integer :following
      t.integer :followers
      t.string :translated
      t.integer :points
      t.text :menu
      t.text :planner
      t.text :shoplist

      t.timestamps
    end
  end
end
