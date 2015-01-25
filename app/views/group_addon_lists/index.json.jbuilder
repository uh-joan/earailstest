json.array!(@group_addon_lists) do |product_group_add_on_list|
  json.extract! product_group_add_on_list, :id, :name, :displayIndex, :logicIndex, :required, :group_id, :user_id
  json.url group_add_on_list_url(product_group_add_on_list, format: :json)
end
