json.array!(@order_sources) do |sales_order_source|
  json.extract! sales_order_source, :id, :name, :user_id
  json.url sales_order_source_url(sales_order_source, format: :json)
end
