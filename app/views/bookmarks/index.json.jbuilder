json.array!(@bookmarks) do |bookmark|
  json.extract! bookmark, :id, :user_id, :bookmark_id, :create, :destroy
  json.url bookmark_url(bookmark, format: :json)
end
