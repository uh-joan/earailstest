json.array!(@items) do |product_item|
  json.extract! product_item, :id, :name, :enabled, :deleted, :user_id, :group_id, :item_type_id
  json.url item_url(product_item, format: :json)
end
