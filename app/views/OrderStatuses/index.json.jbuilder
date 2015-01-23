json.array!(@order_statuses) do |sales_order_status|
  json.extract! sales_order_status, :id, :name, :user_id
  json.url sales_order_status_url(sales_order_status, format: :json)
end
