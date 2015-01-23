json.array!(@order_lines) do |order_line|
  json.extract! order_line, :id, :text, :dealText, :customerNote, :total, :price, :discount, :addonCost, :quantity, :deleted, :order_id, :user_id
  json.url order_line_url(order_line, format: :json)
end
