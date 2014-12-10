json.array!(@product_group_add_on_lists) do |product_group_add_on_list|
  json.extract! product_group_add_on_list, :id, :name, :displayIndex, :logicIndex, :required, :product_group_id, :user_id
  json.url product_group_add_on_list_url(product_group_add_on_list, format: :json)
end
