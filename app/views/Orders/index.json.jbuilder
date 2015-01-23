json.array!(@orders) do |sales_order|
  json.extract! sales_order, :id, :name, :total, :subtotal, :discount, :surcharge, :enabled, :deleted, :sales_order_type_id, :sales_order_status_id, :sales_order_source_id, :user_id
  json.url sales_order_url(sales_order, format: :json)
end
