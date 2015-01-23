json.array!(@sales_order_types) do |sales_order_type|
  json.extract! sales_order_type, :id, :name, :user_id
  json.url sales_order_type_url(sales_order_type, format: :json)
end
