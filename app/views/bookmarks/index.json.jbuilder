json.bookmarks do
  json.array!(@bookmarks) do |bookmark|
    json.extract! bookmark, :id, :title, :url
  end
end
