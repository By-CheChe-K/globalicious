json.extract! recipe, :id, :title, :picture, :user_id, :ingredients, :description, :serving, :language, :preptime, :cooktime, :likes, :notes, :comments, :created_at, :updated_at
json.url recipe_url(recipe, format: :json)
