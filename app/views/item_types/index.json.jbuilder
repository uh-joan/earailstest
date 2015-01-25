json.array!(@item_types) do |product_item_type|
  json.extract! product_item_type, :id, :name, :user_id
  json.url item_type_url(product_item_type, format: :json)
end
