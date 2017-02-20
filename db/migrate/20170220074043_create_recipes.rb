class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.text :picture
      t.string :author
      t.text :ingredients
      t.text :description
      t.integer :serving
      t.text :language
      t.integer :preptime
      t.integer :cooktime
      t.integer :likes
      t.text :notes
      t.text :comments

      t.timestamps
    end
  end
end
