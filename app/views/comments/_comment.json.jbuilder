json.extract! comment, :id, :comment, :author, :created_at, :updated_at
json.url comment_url(comment, format: :json)