json.array!(@items) do |item|
  json.extract! item, :description, :publisher, :published_at, :price, :image_url, :created_at, :updated_at
  json.url item_url(item, format: :json)
end
