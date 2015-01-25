json.array!(@group_addon_list_prices) do |product_group_add_on_list_price|
  json.extract! product_group_add_on_list_price, :id, :cost, :prices, :enabled, :deleted, :group_id, :group_addon_list_id, :addon_id, :category_size_id, :user_id
  json.url group_addon_list_price_url(product_group_add_on_list_price, format: :json)
end
