json.array!(@item_sizes) do |product_item_size|
  json.extract! product_item_size, :id, :name, :item_id, :user_id
  json.url product_item_size_url(product_item_size, format: :json)
end
