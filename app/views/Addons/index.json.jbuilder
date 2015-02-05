json.array!(@addons) do |product_add_on|
  json.extract! product_add_on, :id, :name, :onlineViewLabel, :printViewLabel, :posViewLabel, :visibleOnline, :visiblePos, :user_id
  json.url product_add_on_url(product_add_on, format: :json)
end
