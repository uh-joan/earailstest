json.array!(@product_groups) do |product_group|
  json.extract! product_group, :id, :name, :description, :onlineViewLabel, :posViewLabel, :posViewLabel, :headerImagePath, :displayIndex, :visibleOnline, :visibleOnPos, :enabled, :deleted, :user_id, :product_category_id
  json.url product_group_url(product_group, format: :json)
end
