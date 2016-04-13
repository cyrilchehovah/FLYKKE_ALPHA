json.array!(@posts) do |post|
  json.extract! post, :id, :title, :graphic_content, :url, :description, :user_id
  json.url post_url(post, format: :json)
end
