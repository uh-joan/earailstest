json.array!(@orders) do |order|
  json.extract! order, :id, :name, :total, :subtotal, :discount, :surcharge, :enabled, :deleted, :order_type_id, :order_status_id, :order_source_id, :user_id
  json.url order_url(order, format: :json)
end
