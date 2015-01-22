json.array!(@product_items) do |product_item|
  json.extract! product_item, :id, :name, :enabled, :deleted, :user_id, :product_group_id, :product_item_type_id
  json.url product_item_url(product_item, format: :json)
end
