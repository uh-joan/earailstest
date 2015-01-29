json.array!(@order_sources) do |order_source|
  json.extract! order_source, :id, :name, :user_id
  json.url order_source_url(order_source, format: :json)
end
