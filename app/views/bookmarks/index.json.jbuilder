json.array!(@bookmarks) do |bookmark|
  json.extract! bookmark, :id, :user_id, :mark_id
  json.url bookmark_url(bookmark, format: :json)
end
