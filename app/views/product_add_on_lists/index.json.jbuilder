json.array!(@product_add_on_lists) do |product_add_on_list|
  json.extract! product_add_on_list, :id, :name, :onlineViewLabel, :posViewLabel, :sortListByIndex, :sortListByName, :multipleSelection, :enabled, :user_id
  json.url product_add_on_list_url(product_add_on_list, format: :json)
end
