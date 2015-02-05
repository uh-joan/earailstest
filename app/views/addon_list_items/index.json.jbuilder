json.array!(@addon_list_items) do |product_add_on_list_item|
  json.extract! product_add_on_list_item, :name, :id, :displayIndex, :user_id, :addon_list_id, :addon_id
  json.url addon_list_item_url(product_add_on_list_item, format: :json)
end
