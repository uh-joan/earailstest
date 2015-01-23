json.array!(@group_addon_list_prices) do |product_group_add_on_list_price|
  json.extract! product_group_add_on_list_price, :id, :cost, :prices, :enabled, :deleted, :product_group_id, :pr_gr_adon_li_id, :product_add_on_id, :pr_cat_size_id, :user_id
  json.url product_group_add_on_list_price_url(product_group_add_on_list_price, format: :json)
end
