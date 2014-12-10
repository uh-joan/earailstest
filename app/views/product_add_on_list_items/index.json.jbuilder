json.array!(@product_add_on_list_items) do |product_add_on_list_item|
  json.extract! product_add_on_list_item, :id, :user_id, :product_add_on_list_id, :product_add_on_id
  json.url product_add_on_list_item_url(product_add_on_list_item, format: :json)
end
